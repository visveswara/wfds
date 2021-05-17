/****************************************************************************
A C++ Implemenation of a single-scanner snapshot object.

Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread -mcx16 ecl64.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "sync_primitives.h"
#include <atomic>
#include <stdint.h>

using namespace std;

typedef __int128 int128_t;
typedef unsigned __int128 uint128_t;

class ecl64 {
    public:
        alignas(2*sizeof(intptr_t)) uint128_t x = 0;

        ecl64();
        ~ecl64();

        uint64_t val(uint128_t context);
        uint64_t seq(uint128_t context);
        bool active(uint128_t context);

        uint128_t CLL();
        bool CSC(uint128_t context, uint64_t new_val, bool new_active_bit);
        bool CVL(uint128_t context);

    protected:
        uint128_t combine(uint64_t low, uint64_t high);
        uint64_t high(uint128_t combined);
        uint64_t low(uint128_t combined);
};



ecl64::ecl64() {}
ecl64::~ecl64(){}


uint128_t ecl64::combine(uint64_t low, uint64_t high) {
     return (((uint128_t) high) << 64) | ((uint128_t) low);
}

uint64_t ecl64::high(uint128_t combined) {
    return combined >> 64;
}

uint64_t ecl64::low(uint128_t combined) {
    uint128_t mask = std::numeric_limits<uint64_t>::max();
    return mask & combined;
}


uint64_t ecl64::val(uint128_t context) {
    return high(context);
}

uint64_t ecl64::seq(uint128_t context) {
    return low(context);
}

bool ecl64::active(uint128_t context) {
    return (bool) (context % 2);
}

uint128_t ecl64::CLL() {
    return x;
}

bool ecl64::CVL(uint128_t context) {
    return (x == context);
}


bool ecl64::CSC(uint128_t context, uint64_t new_val, bool new_active_bit) {
    uint64_t old_seq = seq(context);

    uint64_t new_seq;
    if (old_seq % 2 == new_active_bit) {
         new_seq = old_seq + 2;
    } else {
        new_seq  = old_seq + 1;
    }

    uint128_t new_context = combine(new_seq, new_val);
    return CAS(&x, context, new_context);
}


/******************************************************************
int main() {
    ecl64 obj;
    return 0;
}
******************************************************************/


