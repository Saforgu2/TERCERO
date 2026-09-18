#!/usr/bin/env python3

import socket, sys

PORT = 50007

# Egiaztatu argumentu bat pasa dela.
if len( sys.argv ) != 2:
	print( "Erabilera: {} <zerbitzaria>".format( sys.argv[0] ) )
	exit( 1 )

"""IKASLEAK BETETZEKO:
Sortu socketa.
"""

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
zerb_helb = (sys.argv[1], PORT)

print( "Sartu bidali nahi duzun mezua (hutsa bukatzeko):" )
while True:
	mezua = input()
	if not mezua:
		break
	"""IKASLEAK BETETZEKO:
	Bidali mezua eta jaso erantzuna.
	Idatzi erantzuna irteera estandarrean.
	"""
	s.sendto(mezua.encode('utf-8'), zerb_helb)
	buf, helbidea = s.recvfrom(1024)
	
	print(f'''Jasotako data: {buf.decode('utf-8')}
Mezuaren luzeera (char): {len(buf.decode('utf-8'))}
Mezuaren luzeera (byteetan): {len(buf)}
Zerbitzariaren IP-a eta Portua: {helbidea}''')
    
"""IKASLEAK BETETZEKO:
Itxi socketa.
"""
s.close()
