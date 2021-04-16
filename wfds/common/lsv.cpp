/****************************************************************************
A C++ Implemenation of a single-scanner snapshot object.

Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread -mcx16 lsv.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "sync_primitives.h"
#include <atomic>
#include <stdint.h>

using namespace std;


struct alignas(2*sizeof(intptr_t)) double_int {
    intptr_t val{};
    intptr_t seq{};
};



class lsv {
    public:
        atomic<double_int> x;

        lsv();
        ~lsv();

        double_int LL();
        bool DWCAS(intptr_t, intptr_t, intptr_t, intptr_t);
};

lsv::lsv() {
    //x = {init_val, 0};
}

lsv::~lsv(){}

double_int lsv::LL() {
    double_int copy =  x;
    return copy;
}


bool lsv::DWCAS(intptr_t old_val, intptr_t old_seq, intptr_t new_val, intptr_t new_seq) {
    double_int expected{};
    expected.val = old_val;
    expected.seq = old_seq;

    double_int desired{};
    desired.val = new_val;
    desired.seq = new_seq;

    bool success = x.compare_exchange_strong(expected, desired, memory_order_seq_cst);
    return success;
}

/*
int main() {
    lsv obj;

    double_int contents = obj.LL();
    printf("(val, seq) = (%ld, %ld)\n", contents.val, contents.seq);

    bool success = obj.DWCAS(contents.val, contents.seq + 5, 28, contents.seq + 1);
    printf("success = %d\n", success);

    contents = obj.LL();

    printf("(val, seq) = (%ld, %ld)\n", contents.val, contents.seq);


    return 0;
}
*/


