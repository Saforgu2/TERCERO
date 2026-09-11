#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <ctype.h>

#define NUM_MSGS 14
#define MAX_HEX_LENGTH 500
#define MAX_MSG_BYTES (MAX_HEX_LENGTH/2)  

#define MIN_VAL(a,b) (((a)<(b))?(a):(b))
#define MAX_VAL(a,b) (((a)>(b))?(a):(b))

int hex_to_int(uint8_t c);
uint8_t hex_pair_to_byte(uint8_t c, uint8_t d);
void hex_string_to_bytes(const char *hex, uint8_t *bytes, size_t hex_len);
void print_string_int(const uint8_t *a, size_t len);
void print_string_char(const uint8_t *a, size_t len);
void print_printable_char(const uint8_t *a, size_t len);
size_t array_max_value(const size_t *a, size_t len);
void xor_bytes(const uint8_t *str1, const uint8_t *str2, uint8_t *out, size_t len);

int main()
{
	# ENCONTRAR CON XOR UN CHARACTER, POR LO TANTO EN ALGUNOS DE LOS TEXTOS ORIGINALES HAY ESE 
	# CHARACTER
	size_t i, z, j;
	const uint8_t* ciphertexts_hex[NUM_MSGS]= {
	"1a1617451a411517490b061b0f08535404044e17450c1c45326222420a00340006544816170b54030b55020d530046", 
	"184f184f0a081a000016071a00010017090b00100416010054530e060c52301b0c000a131304430e0a0640",
	"09001a5248041b04490a4f060b07550601115953150c010007000604134f2b4f01481a0417115348",
	"7926114506151f1159461b1d0b025454010850120617014542104b08104c35061a4e48201b00520f0c1400170e",
	"0c3c5547071713174e0b0a1b1a445018090b5353110c5216044505015904685a5542010d1a0c4f084f1a0044430d0a005200000007171d54124b", 
	"1a001c4e480c1f0b490808551e1645070d0b5400450252071d474b020b4f2e1b1d00010f560659040a070d1649190d4b",
	"0d0710003d32560c5346211a4e550000091747161143140a06001f040b473c1b1044480002114105040640",
	"1c02054c0718130000080a12020d47110606455306021c45174f06150b4f34060645480f131157091d1e4e1745171d1749071c4d",
	"103b55530d02031749121655070a541104094914000d1100544918450c4e3d0a07551c081a0c5a030b5b",
	"120a1050010f1145410a03551d0b46001f0452164516020115540e0159492a4f14441e0805004448",
	"793b024f48151f0845461f140a444907480b4f074510170601520e4959552a0a5541480f1312000d0a0c4e0141170045541a08065c",
	"163b55530d020317491216551e1645070d0b54004502520b11574b161c54790013000b0917094c0301120b170e",
	"100021000c04000c43031c550d054e54010b43010002010054530e060c52301b0c001e141a0b45140e17070849000100535d",
	"793b1d451a04560c53460e550d1d42111a4553160616000c00594b161249350306001b0919175407081040"};

	size_t ciphertexts_len[NUM_MSGS];
	uint8_t ciphertexts_bytes[NUM_MSGS][MAX_MSG_BYTES];
	
	printf("Mensajes cifrados:\n");
	for (i=0; i<NUM_MSGS; i++)
	{
		ciphertexts_len[i] = strlen(ciphertexts_hex[i]) / 2;

        	printf("Message %d \n", i);
		printf("Original: ");
		print_string_char(ciphertexts_hex[i], ciphertexts_len[i]*2);

		hex_string_to_bytes(ciphertexts_hex[i], ciphertexts_bytes[i], ciphertexts_len[i]*2);

        	printf("Bytes: ");
        	print_string_int(ciphertexts_bytes[i], ciphertexts_len[i]);
	}    


	size_t max_len = array_max_value(ciphertexts_len, NUM_MSGS);	
	uint8_t* key = malloc(max_len*sizeof(uint8_t));
	
	//COMPLETE CODE HERE ...	

	free(key);
	return 0;    
}

int hex_to_int(uint8_t c)
{
    	if (c>='0' && c<='9') //'0'-'9'
    		return (c - '0');
    	else if (c>='a' && c<='f') //'a'-'f'
    		return (c - 'a' + 10);
    	else if (c>='A' && c<='F') //'A'-'F'
    		return (c - 'A' + 10);
    	else
    		return -1; 	
}

uint8_t hex_pair_to_byte(uint8_t c, uint8_t d)
{
    return (uint8_t)((hex_to_int(c) << 4) | hex_to_int(d));
}

void hex_string_to_bytes(const char *hex, uint8_t *bytes, size_t hex_len)
{
    for (size_t i = 0; i < hex_len; i += 2) {
        bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
    }
}

void print_string_int(const uint8_t *a, size_t len)
{
	for (size_t i = 0; i < len; i++) {
		printf("%d ", a[i]);
	}
	putchar('\n');
}

void print_string_char(const uint8_t *a, size_t len)
{
	for (size_t i = 0; i < len; i++) {
		putchar(a[i]);
	}
	putchar('\n');
}

void print_printable_char(const uint8_t *a, size_t len)
{
    for (size_t i = 0; i < len; i++) {
        if (isprint(a[i])) {
            putchar(a[i]);
        } else {
            putchar('*');
        }
    }
    putchar('\n');
}

void xor_bytes(const uint8_t *str1, const uint8_t *str2, uint8_t *out, size_t len)
{
    for (size_t i = 0; i < len; i++) {
        out[i] = str1[i] ^ str2[i];
    }
}

size_t array_max_value(const size_t *a, size_t len)
{
	size_t temp_max = a[0];
	for (size_t i = 1; i < len; i++) {
		temp_max = MAX_VAL(a[i], temp_max);
	}
	return temp_max;
}
