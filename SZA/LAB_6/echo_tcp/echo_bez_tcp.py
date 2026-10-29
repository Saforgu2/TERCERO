#!/usr/bin/env python3

import socket, sys

PORT = 50007

# Egiaztatu argumentu bat pasa dela.
if len(sys.argv) != 2:
	print("Erabilera: {} <zerbitzaria>".format(sys.argv[0]))
	exit(1)

"""IKASLEAK BETETZEKO:
Sortu socketa eta konektatu zerbitzariarekin.
"""
zerb_helb = (sys.argv[1], PORT)
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(zerb_helb)

print("Sartu bidali nahi duzun mezua (hutsa bukatzeko):")
while True:
	mezua = input('Idatzi mezua: ')
	if not mezua:
		break
	"""IKASLEAK BETETZEKO:
	Bidali irakurritakoa eta erantzuna jaso.
	Idatzi irteera estandarrean jasotakoa.
	***Gogoratu irakurketa bakarrean erantzun osoa jasoko dugunaren
	bermerik ez dagoela!
	"""
	s.sendall(mezua.encode('utf8'))
	mezua2 = b''
	luzeera = len(mezua.encode())
	guztira = 0
	while True:
		buf = s.recv(1024)
		guztira += len(buf)
		mezua2 += buf
		if guztira == luzeera:
			break
	print(f'Jasotakoa: {mezua2.decode()}')

"""IKASLEAK BETETZEKO:
Itxi socketa.
"""
s.close()

