/*
 * Placeholder PetaLinux user application.
 *
 * Replace this with your application code
 */
#include <stdio.h>
#include <stdlib.h>
#include <byteswap.h>
#include <linux/wait.h>

//#include <interupt_queue.h>

/*struct FileParameters{
	char ChunkID = malloc(5);

}*/

	//wait_queue_head_t my_queue;
	
//static DECLARE_WAIT_QUEUE_HEAD(wqueue);

void Read_4_byte_char(unsigned char read_bytes[5] ,FILE *fp) {
	int i = 0;
	for(i = 0; i < 4; i++){

		read_bytes[i] = fgetc(fp);
	}
	read_bytes[5] = 0;
	return;

}

unsigned long Read_4_byte_int(FILE *fp) {
	unsigned char i = 0;
	unsigned long read_int = 0;
	unsigned char current_byte = 0;
	for(i = 0; i < 4; i++){

		current_byte = fgetc(fp);
		read_int = read_int | (current_byte << (i*8) );
	}
	return read_int;

}

unsigned short Read_2_byte_int(FILE *fp) {
	unsigned char i = 0;
	unsigned short read_int = 0;
	unsigned char current_byte = 0;
	for(i = 0; i < 2; i++){

		current_byte = fgetc(fp);
		read_int = read_int | (current_byte << (i*8) );
	}
	return read_int;

}

/*unsigned char Read_2_byte_int(FILE *fp) {
	unsigned short read_int = 0;

	read_int = fgetc(fp);
	return read_int;
}*/

int main(int argc, char *argv[])
{



	printf("Hello, PetaLinux World!\n");
	printf("cmdline args:\n");
	while(argc--)
		printf("%s\n",*argv++);

	FILE *fp;
	printf("HER");
	fp = fopen("/mnt/music/305.wav", "r");
	printf("RO\n");

	if (fp == NULL){
		perror("error opening file");
		return(-1);
	}

	unsigned char *ChunkID = malloc(5);
	Read_4_byte_char(ChunkID, fp);
	printf("%s\n", ChunkID);

	unsigned long ChunkSize;
	ChunkSize = Read_4_byte_int(fp);
	printf("0x%x\n", ChunkSize);

	unsigned char *format = malloc(5);
	Read_4_byte_char(format, fp);
	printf("%s\n", format);

	unsigned char *Subchunk1ID = malloc(5);
	Read_4_byte_char(Subchunk1ID, fp);
	printf("%s\n", Subchunk1ID);

	unsigned long Chunk1Size;
	Chunk1Size = Read_4_byte_int(fp);
	printf("0x%x\n", Chunk1Size);

	unsigned long AudioFormat;
	AudioFormat = Read_2_byte_int(fp);
	printf("0x%x\n", AudioFormat);

	unsigned long NumChannels;
	NumChannels = Read_2_byte_int(fp);
	printf("0x%u\n", NumChannels);

	unsigned long SampleRate;
	SampleRate = Read_4_byte_int(fp);
	printf("0x%u\n", SampleRate);	

	unsigned long ByteRate;
	ByteRate = Read_4_byte_int(fp);
	printf("0x%u\n", ByteRate);

	unsigned long BlockAlign;
	BlockAlign = Read_2_byte_int(fp);
	printf("0x%x\n", BlockAlign);

	unsigned long BitsPerSample;
	BitsPerSample = Read_2_byte_int(fp);
	printf("0x%u\n", BitsPerSample);

	unsigned char *Subchunk2ID = malloc(5);
	Read_4_byte_char(Subchunk2ID, fp);
	printf("%s\n", Subchunk2ID);

	unsigned long Chunk2Size;
	Chunk2Size = Read_4_byte_int(fp);
	printf("0x%x\n", Chunk2Size);

	if (Chunk2Size == ChunkSize - Chunk1Size - 4) {
		printf("Chunksize ok\n");
	}
	else{
		printf("METADATA PRESENT! \n");
		printf("0x%u\n0x%u\n", Chunk2Size, ChunkSize - Chunk1Size - 4);

	}

	unsigned long NumSamples = 0;
	NumSamples = Chunk2Size / NumChannels / (BitsPerSample / 8);
	printf("Total samples: %u\n",NumSamples);

	unsigned short FileDuration = 0;
	FileDuration = NumSamples / SampleRate;
	printf("Total duration: %u s\n", FileDuration);

	printf("Total duration: %u m %u s\n", FileDuration / 60, FileDuration % 60);


	unsigned char *WAV_Data = malloc(Chunk2Size);
	/*int i;
	for( i = 0 ; i < Chunk2Size ; i++ ){
		WAV_Data[i] = Read_1_byte_int(fp);
		printf("%p\n", WAV_Data);
	}*/

	fread(WAV_Data,1,Chunk2Size,fp);

	fclose(fp);

	

	fp = fopen("/proc/I2S_driver", "w");
		fwrite(WAV_Data,2,Chunk2Size/2,fp);
	fclose(fp);



	//init_waitqueue_head(&my_queue);

	/*unsigned long SampleToEnd = NumSamples;

	if (waitqueue_active(&wqueue)) {

		while(SampleToEnd > 0){
			wait_event_interuptable(wqueue)
		}


		return 0;
	}
	else printf("Waitqueue not active \n");
*/
	return 0;

}


