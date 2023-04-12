as yet unclassified
initialize

	Instance ifNotNil: [Instance stop].
	Instance := self.
	
	server := WebServer new listenOn: 11388.
	server addService: '/channel' action: [:req | | data |
		data := Json readFrom: req getContent readStream.
		MIDIReact current channelMapping: (data as: Dictionary).
		req send200Response: ''].
	server addService: '/code' action: [:req | | data |
		data := Json readFrom: req getContent readStream.
		(Smalltalk classNamed: data sourceClass) compile: data source.
		req send200Response: ''].
	server addService: '/volume' action: [:req | | data |
		data := Json readFrom: req getContent readStream.
		MIDIReact current player volume: data volume channel: data channel.
		req send200Response: '']