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
char uart__buffer[] = "";

void  uart__init();
void  uart__println(char msg[]);
void  uart__print(char msg[]);
char*  uart__input(char msg[]);

void  main__init() {
	printf("\033[1;37m"); 
}

void  main__clear_screen() {
	// linux 
	system("clear");; 
}

void  uart__init() {
	printf("\033[1;32m"); 
	printf(" Aixt virtual UART\n"); 
}

inline void  uart__println(char msg[]) {
	printf("\033[1;32m"); 
	printf("%s\n", msg); 
}

inline void  uart__print(char msg[]) {
	printf("\033[1;32m"); 
	printf("%s", msg); 
}

char*  uart__input(char msg[]) {
	printf("\033[1;32m"); 
	printf("%s ", msg); 
	scanf("%s", uart__buffer); 
	return uart__buffer; 
}

int main() {
	main__init();
	uart__init();
	
	int32_t a = (int32_t)(1); 
	switch (a) {
		case 2: {
			uart__print("2"); 
			break;
		} 
		case 3: {
			uart__println("3"); 
			break;
		} 
		default: {
			uart__println("another");
			break;
		} 
	}; 
	return 0;
}

