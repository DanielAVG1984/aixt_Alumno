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
	
	short cont = 0; 
	while(cont > 200) {cont += 5;
	} 
	return 0;
}
