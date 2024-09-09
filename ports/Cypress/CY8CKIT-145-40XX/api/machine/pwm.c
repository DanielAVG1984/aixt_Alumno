// Project Name: Aixt project, https://gitlab.com/fermarsan/aixt-project.git
// File Name: pwm.c
// Author: Javier Leon, Camilo Lucas and Fernando M. Santa
// Date: 2023
// License: MIT
//
// Description: This is a module to emulate a PWM output in console.
//              (CY8CKIT-145-40XX)

#define pwm_duty(pwm_id, duty)  pwm##pwm_id##_WriteCompare(65535-duty*655)
