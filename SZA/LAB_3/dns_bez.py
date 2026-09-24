#!/usr/bin/env python3

import socket, sys

"""IKASLEAK BETETZEKO:
DNS zerbitzariaren IP helbidea "/etc/resolv.conf" fitxategian aurkituko duzu.
"""
ZERB_HELB = '127.0.0.53'
ZERB_PORT = 53

# Programa nagusia
if __name__ == "__main__":
	if len( sys.argv ) != 2:
		print( "Erabilera: python3 {} <Domeinu izena>".format( sys.argv[0] ) )
		exit( 1 )

	izena = sys.argv[1]

	dns_zerb = (ZERB_HELB, ZERB_PORT)

	s = socket.socket( socket.AF_INET, socket.SOCK_DGRAM )

	buf = b'\x00\x63'  # ID
	buf += b'\x01\x00' # Flags
	buf += b'\x00\x01' # QDCOUNT
	buf += b'\x00\x00' # ANCOUNT
	buf += b'\x00\x00' # NSCOUNT
	buf += b'\x00\x00' # ARCOUNT
	# QNAME
	for i in izena.split('.'): # DOMEINU IZENA
	    buf += len(i).to_bytes(1, 'big') + i.encode('ascii')

	buf += b'\x00'
	buf += b'\x00\x01' # QTYPE A es address (1)
	buf += b'\x00\x01' # QCLASS IN es (1)
	sent_buf = buf.hex(':').split(':')
	print(buf)
	print(sent_buf[1][0])

	"""IKASLEAK BETETZEKO:
	DNS galdera prestatu. 2 atal hauek izango ditu:
	Header section
		ID (16 bit): Nahi duzun balioa
		Flags (16 bit): 0000 0001 0000 0000
		QDCOUNT (16 bit): 1
		ANCOUNT (16 bit): 0
		NSCOUNT (16 bit): 0
		ARCOUNT (16 bit): 0
	Question section
		QNAME: Galdetzen dugun domeinu izena
		QTYPE (16 bit): A   ==> 1
		QCLASS (16 bit): IN ==> 1
	"""
	s.sendto(buf, dns_zerb) # Galdera bidali
	buf = s.recv(1024) # Erantzuna jaso
	pos = 0 # Erantzuneko zenbatgarren bytea aztertzea tokatzen zaigun gordeko du
	        # buf aldagaitik eremu bat irakurtzen dugun bakoitzean eguneratu beharko da

	print(buf)
	"""IKASLEAK BETETZEKO:
	DNS erantzuna interpretatu. 5 atal hauek izango ditu:
	Header section
		ID (16 bit): Ziurtatu bidalitako bera dela
		Flags (16 bit):
			|QR|   Opcode  |AA|TC|RD|RA|   Z    |   RCODE   |
			+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
			Ziurtatu erantzun bat dela (QR bita=1)
			Ziurtatu RCODE = 0 dela, bestela pantailaratu errorea.
		QDCOUNT (16 bit)
		ANCOUNT (16 bit): Ziurtatu gutxienez erantzun bat jaso dugula. Bestela bukatu.
		NSCOUNT (16 bit)
		ARCOUNT (16 bit)
	Question section
		QNAME
		QTYPE (16 bit)
		QCLASS (16 bit)
	Answer section (RR formatua izango du: 4.1.3. Resource record format)
		NAME: Gogoratu izen konpresioa erabil daitekeela!
		TYPE (16 bit)
		CLASS (16 bit): Ziurtatu IN dela
		TTL (32 bit)
		RDLENGTH (16 bit)
		RDATA
			TYPE A bada, RDATA IP helbide bat da. Pantailaratu puntuko notazioan.
			Bestela, espero ez genuen zerbait gertatu da. Pantailaratu TYPE eta RDATA.
	Authority section: ez prozesatu
	Additional section: ez prozesatu
	"""
	s.close()
