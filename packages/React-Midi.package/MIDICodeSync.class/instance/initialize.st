as yet unclassified
initialize

	server := WebServer new listenOn: 11388.
	server addService: '/channel' action: [:req | | data |
		data := Json readFrom: req getContent readStream.
		MIDIReact current channelMapping: data.
		req send200Response: ''].
	server addService: '/code' action: [:req | | data |
		data := Json readFrom: req getContent readStream.
		(Smalltalk classNamed: data sourceClass) compile: data source.
		req send200Response: '']