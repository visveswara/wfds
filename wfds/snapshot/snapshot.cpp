/****************************************************************************
A C++ Implemenation of a single-scanner snapshot object.

Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread snapshot.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "sync_primitives.h"
#include <limits>

using namespace std;


uint64_t combine(uint32_t low, uint32_t high) {
     return (((uint64_t) high) << 32) | ((uint64_t) low);
}

uint32_t high(uint64_t combined) {
    return combined >> 32;
}

uint32_t low(uint64_t combined) {
    uint64_t mask = std::numeric_limits<uint32_t>::max();
    return mask & combined; // should I just do "return combined;" which gives same result?
}


class snapshot {
    public:
        int m;
        int X;
        int32_t* A;
        int64_t* B;


        snapshot(int);
        ~snapshot();

        void write(int, int32_t);
        int* scan();

    protected:
        void transfer(int, int);
};

snapshot::snapshot(int len) {
    m = len;
    X = 0;
    A = new int32_t[m];
    B = new int64_t[m];

    for (int i = 0; i < m; i++) {
        A[i] = 1;
        B[i] = 0;
    }
}

snapshot::~snapshot(){
    delete[] A;
    delete[] B;
}

void snapshot::transfer(int i, int x) {
    int64_t b = B[i];
    int32_t a = A[i];
    if (X == x) {
        int32_t b_count = low(b);
        int64_t b_prime = combine(b_count + 1, a);
        CAS(&B[i], b, b_prime);
    }
}


void snapshot::write(int i, int32_t v) {
    A[i] = v;
    int x = X;
    if (x % 2 == 1) {
        transfer(i, x);
        transfer(i, x);
    }
}

int* snapshot::scan() {
    int* V = new int[m];

    for (int i = 0; i < m; i++) {B[i] = 0;}
    
    int x = X;
    X = x + 1;

    for (int i = 0; i < m; i++) {V[i] = A[i];}

    X = x + 2;

    for (int i = 0; i < m; i++) {
        int64_t b = B[i];
        if (b != 0) {V[i] = high(b);}
    }

    return V;
}


int main() {
    int m = 5;
    snapshot* S = new snapshot(m);

    int* V = S->scan();

    return 0;
}

