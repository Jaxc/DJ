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

	unsigned length = 512*3;

	int short sine_data[length];

	unsigned short freq = length/3;

	float rads_s = (2*2*M_PI)/freq;

	printf("%f\n",rads_s);

	int i;

	for(i = 0; i < length-1;i++){
		sine_data[i] =(int short)( sinf(rads_s*i)*16000);
//		printf("%d\n", sine_data[i]);
	}

	int short *sine_data_point[length];

	//sine_data_point = &sine_data;

	fp = fopen("/proc/I2S_driver", "w");
	printf("data in: %x, %x, %x, %x \n" , sine_data[0], sine_data[1], sine_data[2], sine_data[3]);
	while(1){
	fwrite(sine_data,1,2*length-2,fp);
	}
	//fread(sine_data_point,2,length/2,fp);
	fclose(fp);
	for(i = 0; i < length-1;i++){
	
	//printf("%x \n", sine_data[i]);
	//printf("%x\n", sine_data_point[i]);
	}


	return 0;
}


