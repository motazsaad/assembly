#include <stdio.h>

int main () {

	printf("Hello World!\n");
	printf("I am going to execute assembly instractions in this C++ program\n");

	char mystr[] = {'H','i','$'};
	char x = 66; // ASCII code of B
	// Assembly code block
	asm {
		//print A
		mov ah, 2
		mov dl, 65 // ASCII code of A
		int 21h
		// CR & LF
		mov dl, 0x0a //CR
		int 21h
		mov dl, 0x0d //LF
		int 21h
		
		//printing the variable x
		mov dl,x
		int 21h
		// CR & LF
		mov dl, 0x0a //CR
		int 21h
		mov dl, 0x0d //LF
		int 21h
		
		//printing the array of charachters
		lea dx, mystr
		mov ah,9
		int 21h
	} // end of asm block

	return 0;
}

