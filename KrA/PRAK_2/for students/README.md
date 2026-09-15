# 2DES MITM (KrA_CrA)

Files in folder:
- des.c, des.h: librery for encryption/decryption with DES and 2DES. The twodes function in des.c is empty.
- test_des_twodes.c: file to undestand the DES library
- MITM.c: file where the meet-in-the-middle attack should be implemented. 
- BFA.c: file where the brute Force attack should be implemented. 
- Makefile: you can use this Makefile to compile test_des_twodes, MITM and BFA. 

Practical considerations: 
- If you use the Makefile you will see many warnings. These warnings are due to MITM and BFA not being completed. 
- Try to undestand the Makefile, this way you will be able to create your own in the future.
- The DES key has 56 bits (7 bytes), but the key variable of des.c/des.h has 64 bits (8 bytes). 
  x Some of the additional bits are to calculate parity and detect errors. 
  x These additional bits are the least significant bits or each byte. 
  x For example, the least significant bit of key[0] has no effect on the encrypted result. That is, if key[0]=0 or key[0]=1 for example, the result will be the same. 
