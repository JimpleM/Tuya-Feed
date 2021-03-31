
#ifndef __HX711_H
#define __HX711_H

#include "tim.h"
#include "stdint.h"
#include "gpio.h"
#include "stdlib.h"
#include "wifi.h"


#define SCK SCK_GPIO_Port
#define DT DT_GPIO_Port


extern int32_t Weight;

uint32_t ReadWeigh(void);
void Get_Maopi(void);
void Get_Weight(void);
void Weight_Init();
void Weight_Handle(void);

#endif
