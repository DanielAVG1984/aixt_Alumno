// This C code was automatically generated by Aixt Project
// Device = Emulator
// Board = Linux, Windows and Android
// Backend = c

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void  main__init();
void  main__clear_screen();
long w = 10;
float x = 12.5;

float  main__add(long a, float b);

void  main__init() {
	
	printf("\033[1;37m"); 
	
}

void  main__clear_screen() {
	
	// linux
	system("clear");; 
	
}
const char u = 'm';
const long v = 23;

float  main__add(long a, float b) {
	
	return a + b; 
	
}
enum main__Color {
	red,
	blue,
};

int main() {
	main__init();
	
	long a = 12; 
	double b = 3.4; 
	char c = 'c'; 
	char d[80];
	strcpy(d, "str"); 
	long e[4] = {3, 5, 6, 7}; 
	enum main__Color  f = red; 
	return 0;
}


