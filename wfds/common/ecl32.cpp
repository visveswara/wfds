/****************************************************************************
A C++ Implemenation of a single-scanner snapshot object.

Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread -mcx16 ecl32.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "sync_primitives.h"
#include <atomic>
#include <stdint.h>

using namespace std;


class ecl32 {
    public:
        uint64_t x = 0;

        ecl32();
        ~ecl32();

        uint32_t val(uint64_t context);
        uint32_t seq(uint64_t context);
        bool active(uint64_t context);

        uint64_t CLL();
        bool CSC(uint64_t context, uint32_t new_val, bool new_active_bit);
        bool CVL(uint64_t context);

    protected:
        uint64_t combine(uint32_t low, uint32_t high);
        uint32_t high(uint64_t combined);
        uint32_t low(uint64_t combined);
};



ecl32::ecl32() {}
ecl32::~ecl32(){}


uint64_t ecl32::combine(uint32_t low, uint32_t high) {
     return (((uint64_t) high) << 32) | ((uint64_t) low);
}

uint32_t ecl32::high(uint64_t combined) {
    return combined >> 32;
}

uint32_t ecl32::low(uint64_t combined) {
    uint64_t mask = std::numeric_limits<uint32_t>::max();
    return mask & combined;
}


uint32_t ecl32::val(uint64_t context) {
    return high(context);
}

uint32_t ecl32::seq(uint64_t context) {
    return low(context);
}

bool ecl32::active(uint64_t context) {
    return (bool) (context % 2);
}

uint64_t ecl32::CLL() {
    return x;
}

bool ecl32::CVL(uint64_t context) {
    return (x == context);
}


bool ecl32::CSC(uint64_t context, uint32_t new_val, bool new_active_bit) {
    uint32_t old_seq = seq(context);

    uint32_t new_seq;
    if (old_seq % 2 == new_active_bit) {
         new_seq = old_seq + 2;
    } else {
        new_seq  = old_seq + 1;
    }

    uint64_t new_context = combine(new_seq, new_val);
    return CAS(&x, context, new_context);
}


/******************************************************************
int main() {
    ecl32 obj;
    return 0;
}
******************************************************************/

