// This C code was automatically generated by Aixt Project
// Device = Emulator
// Board = Linux, Windows and Android
// Backend = c

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void  main__init();
void  main__clear_screen();
char uart__buffer[] = "";

void  uart__init();
void  uart__println(char msg[]);
void  uart__print(char msg[]);
char*  uart__input(char msg[]);
void  time__sleep_ms(long tms);
void  time__sleep(long ts);

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
// linux;

inline void  time__sleep_ms(long tms) {
	
	// linux
	usleep(tms * 1000);; 
	
}

inline void  time__sleep(long ts) {
	
	// linux
	sleep(ts);; 
	
}

int main() {
	main__init();
	uart__init();
	
	for(int i=0; i<5; i++) {uart__println("Hello");time__sleep(1);} 
	return 0;
}
