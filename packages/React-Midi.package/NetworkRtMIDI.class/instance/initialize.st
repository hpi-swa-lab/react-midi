as yet unclassified
initialize

	super initialize.
	
	socket := Socket newTCP.
	socket connectTo: (NetNameResolver addressFromString: '192.168.1.42') port: 11763