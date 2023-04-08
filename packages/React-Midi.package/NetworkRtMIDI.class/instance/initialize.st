as yet unclassified
initialize

	super initialize.
	
	socket := Socket newTCP.
	socket connectTo: (NetNameResolver addressFromString: '127.0.0.1') port: 11763