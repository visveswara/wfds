/****************************************************************************
A C++ Implemenation of a space-efficient concurrent Fast Array.
A Fast Array is an object that gives the interface of a common array:

cfa(m, f) - create an array R of length m; R[i] = f(i)
Write(i, v)


Pseudo-code of the algorithm is as follows:
DESCRIPTION:
VARIABLES:
ALGORITHM:

COMPILE:
    g++ -std=c++11 -pthread -mcx16 cfa.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
//#include "../common/utils.cpp"
#include "./cert_mech.cpp"
#include <limits>

using namespace std;

class cfa {
    public:
    	int p; // number of processes
    	int m; // number of elements in the array
        int init_val; // initial value of all the cells

        int* A;      // principal array
        cert_mech* M; // certifying mechanism

        cfa(int num_procs, int array_len, int initial_value) {
            p = num_procs;
            m = array_len;
            init_val = initial_value;

            A = new int[m];
            M = new cert_mech(p, m);
        }

        ~cfa() {
            delete[] A;
            delete M;
        }

        int read(int i) {
            if (M->is_certified(i)) {
                return A[i];
            } else {
                return init_val;
            }
        }

        void write(int my_id, int i, int v) {
            A[i] = v;
            M->certify(my_id, i);
        }

        void disp() {
            printf("------------------------------------------\n");
                printf("[ ");
                for (int i = 0; i < m; i++) {
                    printf("%d ", read(i));
                }    
                printf("]\n");
            //printf("A: ");
            //print_array(A, m);
            printf("------------------------------------------\n");
        }
};



int main() {
	int num_procs = 2;
    int num_indices = 10;
    int init = 3;
    cfa* IA = new cfa(num_procs, num_indices, init);

    IA->write(1, 2, 2);
    IA->write(1, 3, 3);
    IA->write(1, 5, 5);

    IA->write(0, 5, 50);
    IA->write(1, 2, 20);

    IA->disp();

    return 0;
}


