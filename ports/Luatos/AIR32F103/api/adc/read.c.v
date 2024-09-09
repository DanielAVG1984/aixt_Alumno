// Project Name: Aixt project https://gitlab.com/fermarsan/aixt-project.git
// File Name: read.c.v
// Author: Fernando M. Santa - Julian Camilo Guzmán Zambrano - Juan Pablo Gonzalez Penagos
// Date: 2022-2024
// License: MIT
//
// // Description: READ functions (Blue Pill_STM32F103C)
//              (PC port) 

module adc

#define adc__read(PIN_NAME)   analogRead(PIN_NAME)