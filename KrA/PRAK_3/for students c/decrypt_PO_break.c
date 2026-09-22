#include "AES_CBC.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

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
    


    // Print the modified ciphertext after inserting "LIBEMORI"
    printf("Modified ciphertext (len=%d): ", clen);
    print_hex(modified_ciphertext, clen);

    // Check again if the modified ciphertext corresponds to a valid name
    is_name = check_name(modified_ciphertext, clen);

    // Free allocated memory
    free(ciphertext);
    free(modified_ciphertext);

    return 0;
}

