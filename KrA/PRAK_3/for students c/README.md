# padding oracle in C (KrA_CrA)
 
Files in folder:
1. A Makefile to compile (make, make clean)
2. pad_oracle.a static library
3. AES_CBC.h: file to understand the functions in static pad_oracle.a library
    - decipher_AES_CBC_PO function: 
        x returns length of decrypted plaintext if ciphertext is valid, 
        x returns 0 if ciphertext is not valid. 
        x No information of the decrypted plaintext is ever provided. 
    - check_name function: 
        x if you have not accomplished task correctly "You have NOT achieved the task" is printed and result is 0. 
        x If you have introduced your name with a valid c', ""You have achieved the task, very well YOUR NAME" will be printed and result is 1.  
4. decrypt_PO_break.c: file where the padding oracle should be implemented

