#!/usr/bin/env python3

import socket, os, signal

PORT = 50007

"""OHARRA:
Iruzkinetako zenbakiek praktikako ariketa ezberdinak adierazten dituzte.
Gomendagarria da ariketak banan bana egitea eta hurrengora pasa baino
lehen aurrekoa ondo dabilela ziurtatzea.
"""

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.bind(('', PORT))
s.listen(5)

"""IKASLEAK BETETZEKO:
(2) Prozesu ume zonbiak ekidin. Horretarako, adierazi esplizituki
signal funtzioa erabiliz SIGCHLD seinaleari kasurik ez zaiola egingo.
"""

signal.signal(signal.SIGCHLD, signal.SIG_IGN)

while True:
	elkarrizketa, bez_helb = s.accept()
	print("Bezeroa konektatuta {}:{}.".format(bez_helb[0], bez_helb[1]))

	"""IKASLEAK BETETZEKO:
	(1) Sortu prozesu berri bat bezeroa zerbitzatzeko prozesu
	nagusia beste eskaera batzuen zain geratzen den bitartean.
	"""
	if os.fork():
		elkarrizketa.close()
	else:
		s.close()
		while True:
			buf = elkarrizketa.recv(1024)
			if not buf:
				break
			elkarrizketa.sendall(buf)
		print("Konexioa ixteko eskaera jasota.")
		elkarrizketa.close()
		exit(0)
s.close()

