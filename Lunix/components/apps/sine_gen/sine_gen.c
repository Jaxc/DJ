/*
 * Placeholder PetaLinux user application.
 *
 * Replace this with your application code
 */
#include <stdio.h>
#include <math.h>

int main(int argc, char *argv[])
{
	printf("Hello, PetaLinux World!\n");
	printf("cmdline args:\n");
	while(argc--)
		printf("%s\n",*argv++);
	FILE *fp;

	int short sine_data[44100];

	unsigned short freq = 500;

	float rads_s = (freq*2*M_PI)/44100;

	printf("%f\n",rads_s);

	int i;

	for(i = 0; i< 44099;i++){
		sine_data[i] =(int short)( sinf(rads_s*i)*32000);
//		printf("%d\n", sine_data[i]);
	}

	int short *sine_data_point[44100];

	//sine_data_point = &sine_data;

	fp = fopen("/proc/I2S_driver", "w");
	fwrite(sine_data_point,2,22050,fp);
	fclose(fp);


	return 0;
}


