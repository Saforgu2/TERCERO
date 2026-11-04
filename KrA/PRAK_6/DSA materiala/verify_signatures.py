#!/usr/bin/env python3

import os
from myDSA import DSA

FILES_PATH='files'
PUBLICKEY_FILENAME='public'
SIGNATURES_FILENAME='signatures'

def main():
    dsa = DSA()
    dsa.read_publickey(PUBLICKEY_FILENAME)
    filenames, signatures = read_signatures(SIGNATURES_FILENAME)

    for filename, signature in zip(filenames, signatures):
        with open(os.path.join(FILES_PATH, filename), "rb") as f:
            data = f.read()
            if dsa.verify(data, signature):
                print(f'[{filename}]: Valid signature.')
            else:
                print(f'[{filename}]: Invalid signature.')

    with open('s1.txt', 'rt') as f:
        s1 = int(f.read().rstrip(), 16)
    with open('s2.txt', 'rt') as f:
        s2 = int(f.read().rstrip(), 16)

    with open(os.path.join(FILES_PATH, 'ipsum.txt'), 'rb') as f:
        x1 = f.read()
    with open(os.path.join(FILES_PATH, 'lorem.txt'), 'rb') as f:
        x2 = f.read()
    
    dsa.getkey(s1, s2, x1, x2)

def read_signatures(filename):
    filenames = []
    signatures = []
    with open(filename, "rt") as f:
        lines = f.readlines()
    for filename, signature in zip(lines[0::2], lines[1::2]):
        filenames.append(filename.rstrip())
        signatures.append(int(signature.rstrip(), 16))

    return filenames, signatures

if __name__ == '__main__':
    main()
