#ifndef MOTOR
#define MOTOR

#include "stm32f0xx.h"
#include "stdio.h"
#include "gpio.h"

void Motorcw(int time);

void Motorccw(int time);

void MotorStop(void);

void MotorHandle(int sign, int time); //sign为1时正转，0反转，time为时间
#endif
