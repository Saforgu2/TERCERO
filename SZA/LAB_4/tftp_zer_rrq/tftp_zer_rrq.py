#!/usr/bin/env python3

import sys
import os
import socket

NULL  = b'\x00'
RRQ   = b'\x00\x01'
WRQ   = b'\x00\x02'
DATA  = b'\x00\x03'
ACK   = b'\x00\x04'
ERROR = b'\x00\x05'

PORT = 50069
BLOCK_SIZE = 512
FILES_PATH ='./data/'

def send_error(s, addr, code, message):
	resp  = ERROR
	resp += code.to_bytes(2, 'big')
	resp += message.encode()
	resp += NULL
	s.sendto(resp, addr)
	
def send_file(s, addr, filename):
	try:
		f = open(os.path.join(FILES_PATH, filename), 'rb')
	except:
		send_error(s, addr, 1, 'File not found.')
		exit(1)

	data = f.read(BLOCK_SIZE)
	"""IKASLEAK BETETZEKO:
	Bidali datu blokea bezeroari DATA motako mezu batean.
	"""

	buf = DATA + b'\x00' + b'\x01' + data
	s.sendto(buf, addr)

	block_num = 1
	last = False if len(data) == BLOCK_SIZE else True
	while True:
		"""IKASLEAK BETETZEKO:
		Jaso bezeroaren mezua.
		Errore mezua bada, amaitu.
		Ziurtatu ACK motakoa dela, bestela begiztaren hasierara itzuli.
		Jasotako bloke zenbakia esperotakoa dela ziurtatu (block_num), bestela begiztaren hasierara itzuli.
		"""

		received,_ = s.recvfrom(1024)
		if int.from_bytes(received[0:2], 'big') == 5:
		    print("ERROREA")
		    break
		if int.from_bytes(received[0:2], 'big') != 4:
		    continue
		elif int.from_bytes(received[2:4], 'big') != block_num:
		    continue
				
		if last:
			break
		block_num += 1
		data = f.read(BLOCK_SIZE)
		"""IKASLEAK BETETZEKO:
		Bidali datu blokea bezeroari DATA motako mezu batean.
		"""

		buf = DATA + block_num.to_bytes(2, 'big') + data
		s.sendto(buf, addr)
		
		if len(data) < BLOCK_SIZE:
			last = True

	f.close()

if __name__ == '__main__':
	"""IKASLEAK BETETZEKO:
	Sortu UDP motako socketa s izeneko aldagaian eta esleitu PORT portua.
	"""
	s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	s.bind(('', PORT))

	while True:
		req, cli_addr = s.recvfrom(64)
		
		opcode = req[:2]
		if opcode != RRQ:
			send_error(s, cli_addr, 5, 'Unexpected opcode.')
			continue
		
		filename, mode, _ = req[2:].split(b'\x00')
		if mode.decode().lower() not in ('octet', 'binary'):
			send_error(s, cli_addr, 0, 'Mode unkown or not implemented')
			continue
		
		filename = os.path.basename(filename.decode()) # For security, filter possible paths.
		send_file(s, cli_addr, filename)
