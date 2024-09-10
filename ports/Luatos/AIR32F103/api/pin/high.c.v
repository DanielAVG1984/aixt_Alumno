// Project Name: Aixt https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa - Julian Camilo Guzmán Zambrano - Juan Pablo Gonzalez Penagos
// Date: 2022-2024
// License: MIT
//
// // Description: HIGH functions (Blue Pill_STM32F103C)
//              (PC port) 

module pin

#define pin__high(PIN_NAME)   digitalWrite(PIN_NAME, HIGH)