/****************************************************************************
A C++ Implemenation of a single-scanner snapshot object.

Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread snapshot32.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "../common/sync_primitives.h"
#include "../common/ecl32.cpp"
#include <limits>

using namespace std;


class snapshot32 {
    public:
        int m;
        int X;
        int32_t* A;
        ecl32* B;


        snapshot32(int len);
        ~snapshot32();

        void write(int i, int32_t val);
        int32_t* scan();

    protected:
        bool refresh(int);
        bool transfer(int, int);
};

snapshot32::snapshot32(int len) {
    m = len;
    X = 0;
    A = new int32_t[m];
    B = new ecl32[m];

    for (int i = 0; i < m; i++) {
        A[i] = 0;
    }
}

snapshot32::~snapshot32(){
    delete[] A;
    delete[] B;
}

bool snapshot32::refresh(int i) {
    int64_t context = B[i].CLL();
    int32_t new_val = 0;
    bool new_active_bit = false;
    return B[i].CSC(context, new_val, new_active_bit);
}


bool snapshot32::transfer(int i, int x) {
    int64_t context = B[i].CLL();
    int32_t a = A[i];
    if (X == x) {
        int32_t new_active_bit = true;
        return B[i].CSC(context, a, new_active_bit);
    } else {
        return true;
    }
}


void snapshot32::write(int i, int32_t v) {
    A[i] = v;
    int x = X;
    if (x % 2 == 1) {
        if (!transfer(i, x)) {
            transfer(i, x);
        }
    }
}

int32_t* snapshot32::scan() {
    int* V = new int32_t[m];

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
        int64_t b = B[i].CLL();
        if (B[i].active(b)) {
            V[i] = B[i].val(b);
        }
    }

    return V;
}


int main() {
    int m = 5;
    snapshot32* S = new snapshot32(m);

    int32_t* V = S->scan();

    printf("[ ");
    for (int i = 0; i < m; i++) {
        printf("%d ", V[i]);
    }    
    printf("]\n");


    return 0;
}

