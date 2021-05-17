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
    g++ -std=c++11 -pthread -mcx16 ia.cpp
****************************************************************************/
#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include "../common/lsv.cpp"
#include "../common/sync_primitives.h"
#include "../common/utils.cpp"
#include <limits>

using namespace std;

int high(int combined) {return combined >> 16;}
int low(int combined) {return (combined << 16) >> 16;}
int combine(int low, int high) {return (high << 16) | low;}

class ia {
    public:
    	int p; // number of processes
    	int m; // number of elements in the array
        int init_val; // initial value of all the cells

        int* A; // principal array
        int* B; // certificate-poiters
        int** C; // certification array
        int* X; // upper-limits

        ia(int num_procs, int array_len, int initial_val);
        ~ia();

        void write(int proc, int i, int v);
        int read(int i);

        void disp_full();
        void disp();

    protected:
        void reg(int proc, int i);
        bool is_registered(int i);
};


ia::ia(int num_procs, int array_len, int initial_val) {
	p = num_procs;
	m = array_len;
	init_val = initial_val;

    A = (int*) malloc(sizeof(int) * m);
    B = (int*) malloc(sizeof(int) * m);
    
    C = (int**) malloc(sizeof(int**) * p);
    for (int i = 0; i < p; i++) {
    	C[i]= (int*) malloc(sizeof(int) * m);
    }

    X = new int[p];
}


ia::~ia(){
    delete[] A;
    delete[] B;
    for (int i = 0; i < p; i++) {
    	delete[] C[i];
    }
    delete[] C;
    delete[] X;
}



void ia::write(int proc, int i, int v) {
	A[i] = v;
	reg(proc, i);
}

int ia::read(int i) {
	if (is_registered(i)) {
		return A[i];
	} else {
		return init_val;
	}
}

bool ia::is_registered(int i) {
	int b = B[i];
	int pid = low(b);
	int j = high(b);

	if (0 <= pid && pid < p && X[pid] > j) {
		if (C[pid][j] == i) { 
			return true;
		}
	}

	return false;
}

void ia::reg(int proc, int i) {
	if (!is_registered(i)) {
		int x = X[proc];
		C[proc][x] = i;
		X[proc] = x + 1;
		B[i] = combine(proc, x);
	}
}

void ia::disp() {
    printf("------------------------------------------\n");
        printf("[ ");
        for (int i = 0; i < m; i++) {
            printf("%d ", read(i));
        }    
        printf("]\n");
    printf("------------------------------------------\n");

}

void ia::disp_full() {
	printf("------------------------------------------\n");
	printf("A: ");
	print_array(A, m);
	printf("B: ");
	print_array(B, m);
	printf("C: \n");
	for (int i = 0; i < p; i++) {
		printf("C_%d: X_%d = %d, ", i, i, X[i]);
		print_array(C[i], m);
	}
	printf("------------------------------------------\n");
}

int main() {
	int num_procs = 2;
    int num_elements = 10;
    int init = 0;
    ia* IA = new ia(num_procs, num_elements, init);

    IA->write(1, 2, 2);
    IA->write(1, 3, 3);
    IA->write(1, 5, 5);

    IA->write(0, 5, 50);
    IA->write(1, 2, 20);

    IA->disp();

    //printf("%d\n", IA->read(2));
    //printf("%d\n", IA->read(3));
    //printf("%d\n", IA->read(5));


    return 0;
}


