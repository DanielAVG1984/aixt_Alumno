// This C code was automatically generated by Aixt Project
// Device = Emulator
// Board = Linux, Windows and Android
// Backend = c

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

void  main__init();
void  main__clear_screen();

void  main__init() {
	
	printf("\033[1;37m"); 
	
}

void  main__clear_screen() {
	
	// linux
	system("clear");; 
	
}

int main() {
	main__init();
	
	long a = 10;long b = 1; 
	bool l = true; 
	if(a <= b) {
		l = true;
		a += 1;
	}; 
	if(a > b) {
		a = 0;
		b = 0;
	}
	else 
	{
		a = -1;
		b--;
	}; 
	if(a < b) {
		a++;
	}
	else 
	if(a > b) {
		a--;
	}
	else 
	{
		b++;
	}; 
	if(a < b) {
		a++;
	}
	else 
	if(a > b) {
		a--;
	}; 
	return 0;
}
