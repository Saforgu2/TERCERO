#!/usr/bin/env python3

import sys
import socket
import time

NULL  = b'\x00'
RRQ   = b'\x00\x01'
WRQ   = b'\x00\x02'
DATA  = b'\x00\x03'
ACK   = b'\x00\x04'
ERROR = b'\x00\x05'

PORT = 50069
BLOCK_SIZE = 512

def get_file(s, serv_addr, filename):
	start = time.time()

	f = open(filename, 'wb')
	"""IKASLEAK BETETZEKO:
	Bidali fitxategi eskaera mezua (RRQ) zerbitzariari.
	"""
	mezua = RRQ + filename.encode() + b'\x00' + b'octet' + b'\x00'
	s.sendto(mezua, serv_addr)
	
	expected_block = 1
	while True:
		"""IKASLEAK BETETZEKO:
		Jaso zerbitzariaren erantzuna eta ziurtatu kode egokia duela (DATA), bestela amaitu.
		Jasotako bloke zenbakia esperotakoa dela ziurtatu (expected_block), bestela begiztaren hasierara itzuli.
		Idatzi jasotako datuak fitxategian (f).
		Bidali ACK zerbitzariari, dagokion bloke zenbakia adieraziz.
		Blokea BLOCK_SIZE baino txikiagoa bada, azkena da, beraz, irten begiztatik.
		Bestela, inkrementatu expected_block.
		"""

		received, zeb_helb = s.recvfrom(BLOCK_SIZE + 4)
		if received[0:2] != DATA:
		    print('Ez da bilatzen ari garen erantzuna')
		    break

		if int.from_bytes(received[2:4], 'big') != expected_block:
		    continue

		if (len(received[4:]) <= 512):
		    ack = ACK + expected_block.to_bytes(2, 'big')
		    s.sendto(ack, zeb_helb)
		    f.write(received[4:])
		    if len(received[4:]) < BLOCK_SIZE:
		        break
		    expected_block += 1

	f.close()
	elapsed = time.time() - start
	print('File received in {:.2e} seconds.'.format(elapsed))

if __name__ == '__main__':
	if len(sys.argv) != 3:
		print('Usage: {} server filename'.format(sys.argv[0]))
		exit(1)

	s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	serv_addr = (sys.argv[1], PORT)

	get_file(s, serv_addr, sys.argv[2])
