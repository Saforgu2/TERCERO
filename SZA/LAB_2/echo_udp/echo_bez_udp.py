#!/usr/bin/env python3

import socket, sys

PORT = 50007
BYTE_MAX = 4

# Egiaztatu argumentu bat pasa dela.
if len( sys.argv ) != 3:
	print( "Erabilera: {} <zerbitzaria>".format( sys.argv[0] ) )
	exit( 1 )

"""IKASLEAK BETETZEKO:
Sortu socketa.
"""

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
zerb_helb = (sys.argv[1], int(sys.argv[2]))

print( "Sartu bidali nahi duzun mezua (hutsa bukatzeko):" )
while True:
	mezua = input()
	if not mezua:
		break
	"""IKASLEAK BETETZEKO:
	Bidali mezua eta jaso erantzuna.
	Idatzi erantzuna irteera estandarrean.
	"""

	enkodetuta = mezua.encode('utf-8')
	zatiak = [enkodetuta[i:(i + BYTE_MAX)] for i in range(0, len(enkodetuta), BYTE_MAX)]
	erantzuna = b''

	for zatia in zatiak:
	    s.sendto(zatia, zerb_helb)
	    buf, helbidea = s.recvfrom(BYTE_MAX)

	    if sys.argv[1] != helbidea[0]:
	         continue

	    erantzuna += buf

	    print(f'''Jasotako data: {buf.decode('utf-8')}
	    Mezuaren luzeera (char): {len(buf.decode('utf-8'))}
	    Mezuaren luzeera (byteetan): {len(buf)}
	    Zerbitzariaren IP-a eta Portua: {helbidea}
	    Bezeroaren socketa: {s.getsockname()}''')

	print(erantzuna)
    
"""IKASLEAK BETETZEKO:
Itxi socketa.
"""
s.close()
