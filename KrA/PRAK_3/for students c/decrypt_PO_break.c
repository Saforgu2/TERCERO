#include "AES_CBC.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#define BLOCK_SIZE 16
#define SECOND_BLOCK_START 16
#define BYTE_NUMBERS 256

void calculate_intermediate (uint8_t *intermediate, uint8_t *modified_ciphertext, uint32_t cnt, uint8_t p_position, uint32_t clen);
void calculate_cipher (uint8_t *intermediate, uint8_t *modified_ciphertext, uint32_t cnt, uint8_t p_position);

int main(void)
{
    // Initialize ciphertext in hex string form
    uint8_t* ciphertext_hex = "60592ff65e192e29a29be678fc8873cd0aabea229e2d4521568b1fa32712a1fd8037b482bbc8f3bc523ad5e2e2fd0868";
    
    // Calculate ciphertext length in bytes (2 hex chars per byte)
    uint32_t clen = strlen((char*)ciphertext_hex) / 2;
    
    // Allocate buffer for binary ciphertext and parse hex string into bytes
    uint8_t* ciphertext = malloc(clen * sizeof(uint8_t));
    parse(clen, ciphertext_hex, ciphertext);  // Convert hex string to byte array
    
    printf("Ciphertext (hex): ");
    print_hex(ciphertext, clen);

    // Decipher ciphertext using AES CBC padding oracle, get plaintext length
    uint32_t plen = decipher_AES_CBC_PO(ciphertext, clen);
    if (plen != 0)
    {
        printf("Valid pad, plen = %d.\n", plen); 
    }   
    else
    {   
        printf("Invalid pad (padding error), plen = %d.\n", plen);
    }

    // Check if ciphertext corresponds to a known 'name' (some kind of validation)
    uint8_t is_name = check_name(ciphertext, clen);

    // Make a copy of ciphertext to modify for padding oracle attack
    uint8_t* modified_ciphertext = malloc(clen * sizeof(uint8_t));
    memcpy(modified_ciphertext, ciphertext, clen);

    // Complete padding oracle attack
	
	int32_t p_position; 
	uint32_t cnt = 1;
	uint8_t *intermediate = calloc(BLOCK_SIZE, sizeof(uint8_t));
    
	for (p_position = BLOCK_SIZE - 1; p_position >= 0; p_position--)
	{
		calculate_intermediate(intermediate, modified_ciphertext, cnt, p_position, clen);
		cnt++;
	}

	uint8_t my_name[] = "SAMI ULLAH";
	uint32_t name_len = strlen(my_name);
	uint8_t name_pad = BLOCK_SIZE - name_len;
	uint8_t *new_p = calloc(BLOCK_SIZE, sizeof(uint8_t));

	uint32_t i;
	memcpy(new_p, my_name, name_len);
	memset(&new_p[name_len], name_pad, name_pad);

	for (i = 0; i < BLOCK_SIZE; i++)
	{
		modified_ciphertext[BLOCK_SIZE + i] =  intermediate[i] ^ new_p[i];
	}
	
    // Print the modified ciphertext after inserting "LIBEMORI"
    printf("Modified ciphertext (len=%d): ", clen);
    print_hex(modified_ciphertext, clen);

    // Check again if the modified ciphertext corresponds to a valid name
    is_name = check_name(modified_ciphertext, clen);

    // Free allocated memory
    free(ciphertext);
    free(modified_ciphertext);
    free(intermediate);
    free(new_p);

    return 0;
}

void calculate_intermediate (uint8_t *intermediate, uint8_t *modified_ciphertext, uint32_t cnt, uint8_t p_position, uint32_t clen)
{
	calculate_cipher(intermediate, modified_ciphertext, cnt, p_position);
	uint32_t c_number;
	for (c_number = 0; c_number < BYTE_NUMBERS; c_number++)
	{
		modified_ciphertext[SECOND_BLOCK_START + p_position] = (uint8_t)(c_number);
		if (decipher_AES_CBC_PO(modified_ciphertext, clen) != 0)
		{
			break;
		}
	}
	intermediate[p_position] = c_number ^ cnt;
}

void calculate_cipher (uint8_t *intermediate, uint8_t *modified_ciphertext, uint32_t cnt, uint8_t p_position)
{
	uint32_t c_position;
	for (c_position = BLOCK_SIZE - 1; c_position > p_position; c_position--)
	{
		modified_ciphertext[SECOND_BLOCK_START + c_position] = intermediate[c_position] ^ cnt;
	}
}
