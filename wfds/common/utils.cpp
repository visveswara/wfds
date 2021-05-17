#include <iostream>
#include <cstdlib>
#include <thread> 
#include <unistd.h>
#include <limits>

using namespace std;

void print_array(int* arr, int len) {
	printf("[ ");
    for (int i = 0; i < len; i++) {
        printf("%d ", arr[i]);
    }    
    printf("]\n");

}


