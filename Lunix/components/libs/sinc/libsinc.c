#include <stdio.h>
#include <math.h>

float sinc_pulse(float offset)
{
	if (offset == 0){
		return 0;
	}
	else {
		return (sinf(offset*M_PI)/(offset*M_PI)); 
	}
}
