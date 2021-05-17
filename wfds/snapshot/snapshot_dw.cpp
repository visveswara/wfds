/****************************************************************************
A C++ Implemenation of a single-scanner snapshot object.

Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread -mcx16 snapshot_dw.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "../common/lsv.cpp"
#include "../common/sync_primitives.h"
#include <limits>

using namespace std;


class snapshot_dw {
    public:
        int m;
        int X;

        intptr_t* A;
        lsv* B;

        snapshot_dw(int);
        ~snapshot_dw();

        void write(int, intptr_t);
        intptr_t* scan();

    protected:
        void refresh(int);
        void transfer(int, int);
};

snapshot_dw::snapshot_dw(int len) {
    m = len;
    X = 0;
    A = new intptr_t[m];
    B = new lsv[m];

    for (int i = 0; i < m; i++) {
        A[i] = 0;
    }
}

snapshot_dw::~snapshot_dw(){
    delete[] A;
    delete[] B;
}

void snapshot_dw::transfer(int i, int x) {
    double_int b = B[i].LL();
    intptr_t   a = A[i];

    if (X == x) {
        intptr_t b_val = b.val;
        intptr_t b_seq = b.seq;
        B[i].DWCAS(b_val, b_seq, a, b_seq + 1);
    }
}

void snapshot_dw::refresh(int i) {
    double_int b = B[i].LL();
    B[i].DWCAS(b.val, b.seq, 0, 0);  
}

void snapshot_dw::write(int i, intptr_t v) {
    A[i] = v;
    int x = X;
    if (x % 2 == 1) {
        transfer(i, x);
        transfer(i, x);
    }
}

intptr_t* snapshot_dw::scan() {
    intptr_t* V = new intptr_t[m];

    for (int i = 0; i < m; i++) {
        refresh(i);
    }
    
    int x = X;
    X = x + 1;

    for (int i = 0; i < m; i++) {V[i] = A[i];}

    X = x + 2;

    for (int i = 0; i < m; i++) {
        double_int b = B[i].LL();
        if (b.seq != 0) {V[i] = b.val;}
    }

    return V;
}


int main() {
    int m = 5;
    snapshot_dw* S = new snapshot_dw(m);

    intptr_t* V = S->scan();

    printf("[");
    for (int i = 0; i < m; i++) {
        printf("%ld ", V[i]);
    }    
    printf("]\n");

    return 0;
}

