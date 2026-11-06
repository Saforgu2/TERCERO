#!/usr/bin/env python3

import socket
import getpass

# Zehaztu POP zerbitzariaren izena/helbidea eta portua
POP_HELB = '158.227.106.12'
POP_PORT = 110
ZERB_HELB = (POP_HELB, POP_PORT)

def recvline(s, removeEOL = True):
	"""s socketetik irakurtzen du lerro jauzi bat (CRLF) jaso arte"""
	line = b''
	CRreceived = False
	while True:
		c = s.recv(1)
		if c == b'':
			raise EOFError('Connection closed by the peer before receiving an EOL.')
		line += c
		if c == b'\r':
			CRreceived = True
		elif c == b'\n' and CRreceived:
			if removeEOL:
				return line[:-2]
			else:
				return line
		else:
			CRreceived = False

if __name__ == '__main__':
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

	"""IKASLEAK BETETZEKO:
	TCP konexioa ireki.
	"""

	s.connect(ZERB_HELB)
	jaso = recvline(s)
	print(jaso)

	erab = input('Zein da zure buzoiaren erabiltzaile izena? ')
	pasahitza = getpass.getpass('Zein da pasahitza?')
	"""IKASLEAK BETETZEKO:
	Erabiltzailea kautotu.
	"""

	mezua = '{} {}\r\n'.format('USER', erab).encode('ascii')
	s.sendall(mezua)
	jaso = recvline(s)
	if jaso.startswith('+OK'.encode('ascii')):
		mezua = '{} {}\r\n'.format('PASS', pasahitza).encode('ascii')
		s.sendall(mezua)
		jaso = recvline(s)
		print(jaso)
	
	"""IKASLEAK BETETZEKO:
	· Buzoiko mezu kopurua lortu eta pantailaratu.
	· Menua aurkeztu 3. aukera hautatu arte:
		1. Mezua irakurri
		2. Mezua ezabatu
		3. Saioa itxi eta irten
	"""

	while True:
		mezua = '{} \r\n'.format('STAT').encode('ascii')
		s.sendall(mezua)
		kop = recvline(s).decode('ascii').split(' ')[1]
		menua = '''Mezu Kopurua: {}
----------------------------
1. Mezua irakurri
2. Mezua ezabatu
3. Saioa itxi eta irten
----------------------------'''.format(kop)
		option = int(input('Sartu zure aukera? '))
		if int(option) == 1:
			mezuzenb = input('Zer mezu nahi duzu? ')
			mezua = '{} {}\r\n'.format('RETR', int(mezuzenb)).encode('ascii')
			s.sendall(mezua)
			mezua = recvline(s)
			while mezua.decode('ascii') != '.':
				mezua = recvline(s)
				print(mezua)
		elif option == 2:
			mezuzenb = input('Zer mezu kendu nahi duzu? ')
			mezua = '{} {}\r\n'.format('DELE', int(mezuzenb)).encode('ascii')
			s.sendall(mezua)
			mezua = recvline(s).decode('ascii')
			print(mezua)
		elif option == 3:
			mezua = '{} \r\n'.format('QUIT').encode('ascii')
			s.sendall(mezua)
			mezua = recvline(s)
			print(mezua)
			break
		else:
			print('Aukera desegokia.')