#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define ARRAY_SIZE 11

int highest_matches = 0;
int best_rotation = 0;

char *most_used[] = {"the", "be", "to", "of", "and", "a", "in", "that", "have", "i", "is"};

void rotation (unsigned char *a, int len, int despl);
void print_string (unsigned char a[], int len, int despl);
int does_match (unsigned char *b, int word_len);
int descrypt (unsigned char a, int despl);

int main() {
        unsigned char cipher[1000]="Tfewzuvekzrczkp zj ivjvimzex rlkyfizqvu ivjkiztkzfej fe zewfidrkzfe rttvjj reu uzjtcfjliv, zetcluzex dvrej wfi gifkvtkzex gvijferc gizmrtp reu gifgizvkrip zewfidrkzfe. Zekvxizkp zj xlriuzex rxrzejk zdgifgvi zewfidrkzfe dfuzwztrkzfe fi uvjkiltkzfe, reu zetcluvj vejlizex zewfidrkzfe efe-ivgluzrkzfe reu rlkyvekztzkp. Rmrzcrszczkp zj vejlizex kzdvcp reu ivczrscv rttvjj kf reu ljv fw zewfidrkzfe.";
        int len=strlen(cipher);
        //Rellenar el c�digo aqu�

        // 97-122
        for (int i = 1; i < 26; i++) {
                rotation(cipher, len, i);
        }

        printf("%d\n", best_rotation);
  
        print_string(cipher, len, best_rotation);

        return 0;
}

void rotation (unsigned char *a, int len, int despl)
{
        int start = 0;
        int matches = 0;
        int word_len;

        unsigned char *b;
        unsigned char *tmp = (unsigned char*)malloc(sizeof(char) * len);
        
        memcpy(tmp, a, len * sizeof(char));

        for (int i=0; i<len; i++)
        {       
                tmp[i] = (unsigned char)descrypt(tmp[i], despl);
                if (a[i] == ',' || a[i] == '.' || a[i] == ' ') {
                        word_len = i - start;
                        unsigned char *b = (unsigned char*)malloc(sizeof(char) * (word_len + 1));
                        memcpy(b, &tmp[start], word_len * sizeof(char));
                        b[word_len] = '\0';
                        matches += does_match(b, word_len);
                        start = i + 1;
                        free(b);
                }
        }
        
        free(tmp);
      
        if (highest_matches < matches) {
                highest_matches = matches;
                best_rotation = despl;
        }
}

int does_match (unsigned char *b, int word_len)
{
    
        for (int i = 0; i < word_len; i++)
        {
                if (b[i] >= 'A' && b[i] <= 'Z') {
                        b[i] = b[i] + 32;  // Convert to lowercase
                } 
        }
                
        for (int i = 0; i < ARRAY_SIZE; i++) 
        {
                if (strcmp(b, most_used[i]) == 0) {
                        return 1;
                }
        }
        
        return 0;
}

int descrypt (unsigned char a, int despl)
{
        int ken;
        if (a == ',' || a == '.' || a == ' ' || a == '-') {
                ken = a;
        }
        else {
                ken = a - despl;
                if (a < 91) {
                        if (ken < 65) {
                                ken = ken + 26;
                        }
                }
                else {
                        if (ken < 97) {
                                 ken = ken + 26;
                        }
                }
        }
        return ken;
}

void print_string (unsigned char a[], int len, int despl)
{
	      for (int i=0; i<len; i++)
	      {
		            printf("%c", descrypt(a[i], despl));
	      }
}
