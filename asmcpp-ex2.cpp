#include <stdio.h>

extern "C" void asmfunc();

int main () {

	printf("Hello World!\n");
	printf("I am going to execute assembly instractions in this C++ program\n");
	// call assembly procedure
	asmfunc();

	return 0;
}

