as yet unclassified
startPlaybackHost: aClass

	CurrentClass := aClass.
	MIDICodeSync new.
	MIDIReact useRemote: nil.
	MIDIPlayer midiClass: RtMIDI.
	MIDIReact syncClass start channelMapping: Dictionary new