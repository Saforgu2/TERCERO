#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#include "des.h"
 
int main (void)
{
	//Meet-in-the-middle attack 2DES
	//some of the most significant bytes of key1 and key2 are unkown	
	int bytes_k2=1; 
	int bytes_k1=2;
	uint8_t key1[DES_KEY_SIZE]={0x00,0x00,0x83,0x48,0x42,0x20,0x3f,0x0f}; 
	uint8_t key2[DES_KEY_SIZE]={0x00,0xe5,0x33,0x48,0x36,0x54,0x3f,0x30}; 
	uint64_t iterations_k2 = pow(2, 8*bytes_k2);
	uint64_t iterations_k1 = pow(2, 8*bytes_k1);

	
	//3 plaintext and ciphertext pairs are known (p1,c1), (p2,c2), (p3,c3)
	uint8_t p1[BLOCK_SIZE]="Can you ";
	uint8_t c1[BLOCK_SIZE]={0x5a, 0x72, 0xd1, 0x75, 0x69, 0xfa, 0xe4, 0xba};
	uint8_t p2[BLOCK_SIZE]="find the";
	uint8_t c2[BLOCK_SIZE]={0x1d, 0x9b, 0x47, 0x2a, 0x82, 0xbc, 0xf0, 0x5c};
	uint8_t p3[BLOCK_SIZE]="keys????";
	uint8_t c3[BLOCK_SIZE]={0xbc, 0xe7, 0xe1, 0x41, 0x61, 0x9c, 0xc1, 0xa0};
	//Can you determine p4 from c4?
	uint8_t c4[BLOCK_SIZE]={0x46, 0x00, 0x16, 0xda, 0x57, 0xb2, 0x6a, 0xfd};
	uint8_t p4[BLOCK_SIZE];

	uint64_t i, j;
	
	clock_t start, finish;
	double time_taken;
	start = clock();
	
	//IMPLEMENT BFA ATTACK
	//...
	//...

	int found = 0;

	uint8_t key1_out[DES_KEY_SIZE];
	uint8_t key2_out[DES_KEY_SIZE];

	for (i = 0; i < iterations_k2; i +=2)
	{
		key2[0] = (uint8_t)(i);
		for (j = 0; j < iterations_k1; j+=2)
		{
			key1[0] = (uint8_t)(j >> 8);
			key1[1] = (uint8_t)(j);

			des(DECRYPTION, c1, key1_out, key1);
			des(ENCRYPTION, p1, key2_out, key2);

			if (memcmp(key1_out, key2_out, DES_KEY_SIZE) == 0)
			{
				found = 1;
				break;
			}
		}
		if (found)
			break;
	}

	if (found)
	{
		twodes(DECRYPTION, p4, c4, key1, key2);
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			printf("%c", p4[i]);
		}
	}
	
	finish = clock();
	time_taken = (double)(finish - start)/(double)CLOCKS_PER_SEC;
	printf("\nTime DES: %f seg\n", time_taken);
		
	return 0;
}


