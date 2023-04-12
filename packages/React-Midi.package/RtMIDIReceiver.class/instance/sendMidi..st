as yet unclassified
sendMidi: aCollection

	self assert: (aCollection size = 2 or: [aCollection size = 3]).
	midi send: aCollection