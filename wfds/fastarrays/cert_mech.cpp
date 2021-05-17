/****************************************************************************
C++ Implemenation of a space-efficient certification mechanism for 
fast arrays.

INTERFACE:
    cert_mech(num_procs)
    certify(A, i)
    is_certified(A, i)

ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread -mcx16 cert_mech.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "../common/lsv.cpp"
#include "../common/sync_primitives.h"
//#include "./cfa.c"
#include <limits>

using namespace std;

class cert_mech {
    public:
        int INIT_LEN = 2;

    	int p; // number of processes
        int m; // number of indices

        int* X;
        int* k; 

        long* B;
        int*  lenC;
        int** C;      // pointers to current certification arrays
        int** Cprime; // pointers to next certification arrays
        
        cert_mech(int num_procs, int num_indices) {
            p = num_procs;
            m = num_indices;

            X = new int[p];
            k = new int[p];

            B = new long[m];
            lenC = new int[p];
            C = new int*[p];
            Cprime = new int*[p];

            for (int i = 0; i < p; i++) {
                X[i] = 0;
                k[i] = 0;
                lenC[i]   = INIT_LEN;
                C[i]      = new int[INIT_LEN];
                Cprime[i] = new int[2*INIT_LEN];
            }
        }

        ~cert_mech();

        bool is_certified(int i) {
            long b  = B[i];
            int pid = get_pid(b);
            int loc = get_loc(b);

            if (0 <= pid && pid < p) {
                int x       = X[pid];
                int* c_other = C[pid]; 

                if (0 <= loc < x && c_other[loc] == i) {
                    return true;
                }
            } 

            return false;
        }

        void certify(int my_id, int i) {
            long b_old = B[i];
            int pid = get_pid(b_old);
            int loc = get_loc(b_old);

            if (is_certified(i)) {return;}

            int x = X[my_id];
            if (x >= lenC[my_id]) {
                C[my_id] = Cprime[my_id];
                lenC[my_id] = 2*lenC[my_id];
                Cprime[my_id] = new int[2 * lenC[my_id]];
                k[my_id] = 0;
            }

            if (pid == my_id && loc == x) {
                C[my_id][x] = -1;
                x = x + 1;
            }

            C[my_id][x] = i;
            X[my_id] = x + 1;

            while (k[my_id] < 2*(x + 1 - lenC[my_id])) {
                Cprime[my_id][k[my_id]] = C[my_id][k[my_id]];
                k[my_id] = k[my_id] + 1;
            }

            long new_pair = get_pair(my_id, x);
            if (!CAS(&B[i], b_old, new_pair)) {
                X[my_id] = x;
            }
        }

    private:
        int  get_pid(long pair) {return (int) (pair >> 32);}
        int  get_loc(long pair) {return (int) pair;}
        long get_pair(int pid, int loc) {return (((long) pid) << 32) | ((long) loc);}


};


