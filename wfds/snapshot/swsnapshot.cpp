/****************************************************************************
A C++ Implemenation of a single-writer single-scanner snapshot object.

Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread swsnapshot.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "sync_primitives.h"

using namespace std;


class swsnapshot {
    public:
        int m;
        bool X;
        int* A;
        int* B;

        swsnapshot(int);
        ~swsnapshot();

        void write(int, int);
        int* scan();
};

swsnapshot::swsnapshot(int len) {
    m = len;
    X = false;
    A = new int[m];
    B = new int[m];

    for (int i = 0; i < m; i++) {
        A[i] = 1;
        B[i] = 0;
    }
}

swsnapshot::~swsnapshot(){
    delete[] A;
    delete[] B;
}

void swsnapshot::write(int i, int v) {
    A[i] = v;
    if (X) {B[i] = v;}
}

int* swsnapshot::scan() {
    int* V = new int[m];

    X = true;
    for (int i = 0; i < m; i++) {B[i] = 0;}
    for (int i = 0; i < m; i++) {V[i] = A[i];}
    X = false;
    for (int i = 0; i < m; i++) {
        int b = B[i];
        if (b != 0) {V[i] = b;}
    }
    return V;

}


int main() {
    int m = 5;
    swsnapshot* S = new swsnapshot(m);

    int* V = S->scan();

    return 0;
}

