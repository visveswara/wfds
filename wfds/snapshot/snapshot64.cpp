/****************************************************************************
A C++ Implemenation of a single-scanner snapshot object.

Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread snapshot64.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "../common/sync_primitives.h"
#include "../common/ecl64.cpp"
#include <limits>

using namespace std;


class snapshot64 {
    public:
        int m;
        int X;
        uint64_t* A;
        ecl64* B;


        snapshot64(int len);
        ~snapshot64();

        void write(int i, uint64_t val);
        uint64_t* scan();

    protected:
        bool refresh(int);
        bool transfer(int, int);
};

snapshot64::snapshot64(int len) {
    m = len;
    X = 0;
    A = new uint64_t[m];
    B = new ecl64[m];

    for (int i = 0; i < m; i++) {
        A[i] = 0;
    }
}

snapshot64::~snapshot64(){
    delete[] A;
    delete[] B;
}

bool snapshot64::refresh(int i) {
    uint128_t context = B[i].CLL();
    uint64_t new_val = 0;
    bool new_active_bit = false;
    return B[i].CSC(context, new_val, new_active_bit);
}


bool snapshot64::transfer(int i, int x) {
    uint128_t context = B[i].CLL();
    uint64_t a = A[i];
    if (X == x) {
        uint64_t new_active_bit = true;
        return B[i].CSC(context, a, new_active_bit);
    } else {
        return true;
    }
}


void snapshot64::write(int i, uint64_t v) {
    A[i] = v;
    int x = X;
    if (x % 2 == 1) {
        if (!transfer(i, x)) {
            transfer(i, x);
        }
    }
}

uint64_t* snapshot64::scan() {
    uint64_t* V = new uint64_t[m];

    for (int i = 0; i < m; i++) {
        if (!refresh(i)) {
            refresh(i);
        }
    }
    
    int x = X;
    X = x + 1;

    for (int i = 0; i < m; i++) {V[i] = A[i];}

    X = x + 2;

    for (int i = 0; i < m; i++) {
        uint128_t b = B[i].CLL();
        if (B[i].active(b)) {
            V[i] = B[i].val(b);
        }
    }

    return V;
}


int main() {
    int m = 5;
    snapshot64* S = new snapshot64(m);

    uint64_t* V = S->scan();

    printf("[ ");
    for (int i = 0; i < m; i++) {
        printf("%llu ", V[i]);
    }    
    printf("]\n");


    return 0;
}

