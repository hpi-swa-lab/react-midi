as yet unclassified
initialize

	midi := RtMIDI new.
	
	socket := Socket newTCP.
	socket listenOn: 11763 backlogSize: 15.
	socket isWaitingForConnection ifFalse: [self error: 'Failed to listen'].
	
	listenerProcess := [
		Transcript showln: 'Server listening'.
		clientSocket := socket waitForAcceptFor: 10000.
		Transcript showln: 'Client connected'.
		[ | data length |
			data := ByteArray new: 12.
			length := clientSocket receiveDataInto: data.
			data := data copyFrom: 1 to: length.
			data ifNotEmpty: [self sendMidi: data]] repeat.
		Transcript showln: 'Server quitting'] forkAt: Processor userBackgroundPriority