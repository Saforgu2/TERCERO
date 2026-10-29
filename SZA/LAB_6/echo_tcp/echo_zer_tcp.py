#!/usr/bin/env python3

import socket

PORT = 50007

"""IKASLEAK BETETZEKO:
Sortu socket bat, esleitu helbide bat eta ezarri entzute socket
bezala.
"""

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('', PORT))
s.listen(5)

while True:
	"""IKASLEAK BETETZEKO:
	Onartu konexio berri bat.
	Bezeroak konexioa itxi arte jaso mezuak eta erantzun datu
	berdinak bidaliz.
	"""
	elkarrizketa, bez_helb = s.accept()
	while True:
		mezua = elkarrizketa.recv(1024)
		if not mezua:
			print("Bukatu da konexioa")
			break
		elkarrizketa.sendall(mezua)
	elkarrizketa.close()

"""IKASLEAK BETETZEKO:
Itxi entzute socketa.
"""
s.close()

