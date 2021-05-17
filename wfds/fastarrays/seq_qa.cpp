/****************************************************************************
A C++ Implemenation of a sequential "Quick Array".
A Quick Array is an object that gives the interface of a common array--as a
vector of readable and writable ints--but has the property of quickly 
initializing to a default value.


Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread -mcx16 seq_qa.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "../common/sync_primitives.h"
#include <limits>

using namespace std;


class seq_qa {
    public:
        int X;
        int LEN;

        int* A;
        int* B;
        int* C;

        int INIT_VAL;

        seq_qa(int, int);
        ~seq_qa();

        void write(int, int);
        int read(int);

        void disp();

    protected:
        bool isValid(int);
        void reg(int);
};

seq_qa::seq_qa(int len, int init) {
    X   = 0;
    LEN = len;  

    A = new int[len];
    B = new int[len];
    C = new int[len];

    INIT_VAL = init;
}

seq_qa::~seq_qa(){
    delete[] A;
    delete[] B;
    delete[] C;
}

bool seq_qa::isValid(int i) {
    return ((B[i] < X) && (C[B[i]] == i));
}

void seq_qa::reg(int i) {
    int x = X;
    B[i] = x;
    C[x] = i;
    X = x + 1;
}


int seq_qa::read(int i) {
    if (isValid(i)) {
        return A[i];
    } else {
        return INIT_VAL;
    }
}


void seq_qa::write(int i, int v) {
    A[i] = v;
    if (!isValid(i)) {
        reg(i);
    }
}


void seq_qa::disp() {
    printf("[ ");
    for (int i = 0; i < LEN; i++) {
        printf("%d ", read(i));
    }    
    printf("]\n");
}



int main() {
    int m = 10;
    int init = 17;
    seq_qa* QA = new seq_qa(m, init);

    QA->disp();
    QA->write(2, 0);
    QA->disp();

    return 0;
}

