
#include "HX711.h"


#define GapValue 213
#define Cnt_Limit 200	//通过while（1）循环次数来定时上报

uint32_t HX711_Buffer;
uint32_t Weight_Maopi=0;
int32_t Pre_Weight = 0;
int32_t Weight=0;
int Cnt = 0;

uint32_t ReadWeigh(void){
	uint8_t i;

	HAL_GPIO_WritePin(DT, DT_Pin, GPIO_PIN_SET);
	Delay_us(1);
	HAL_GPIO_WritePin(SCK, SCK_Pin, GPIO_PIN_RESET);

	uint32_t value = 0;

	while(HAL_GPIO_ReadPin(DT, DT_Pin));
	
	for(i=0; i<24; i++){
		HAL_GPIO_WritePin(SCK, SCK_Pin, GPIO_PIN_SET);
		value = value << 1;
		Delay_us(1);
		HAL_GPIO_WritePin(SCK, SCK_Pin, GPIO_PIN_RESET);
		if(HAL_GPIO_ReadPin(DT, DT_Pin) == GPIO_PIN_SET){
			value++;
		}
		Delay_us(1);
	}

	HAL_GPIO_WritePin(SCK, SCK_Pin, GPIO_PIN_SET);
	value = value^0x800000;
	Delay_us(1);
	HAL_GPIO_WritePin(SCK, SCK_Pin,GPIO_PIN_RESET);
	return value;
}

void Get_Maopi(void){
	Weight_Maopi = ReadWeigh();
}


void Get_Weight(void){
	HX711_Buffer = ReadWeigh();
	if(HX711_Buffer > Weight_Maopi){
		Weight = HX711_Buffer;
		Weight = Weight - Weight_Maopi;
		Weight = (int32_t)((float)Weight/GapValue);
	}
}

void Weight_Init(void){
	Get_Maopi();
	HAL_Delay(1000);
	Get_Maopi();
}
void Weight_Update(void){
	Pre_Weight = Weight;
	mcu_dp_value_update(DPID_WEIGHT,(unsigned long)Weight);
}
int My_abs(int k){
	return k>=0? k:-k;
}
void Weight_Handle(void){
	if(My_abs((int)(Weight-Pre_Weight))>=10){
		Weight_Update();
		Cnt = 0;
	}else{
		Cnt++;
		if(Cnt>=Cnt_Limit){
			Weight_Update();
			Cnt = 0;
		}
	}
}

