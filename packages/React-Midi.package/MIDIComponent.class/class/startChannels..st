as yet unclassified
startChannels: aDictionary

	| react |
	react := MIDIReact new
		channelMapping: aDictionary;
		component: self new.
	react start.
	^ react