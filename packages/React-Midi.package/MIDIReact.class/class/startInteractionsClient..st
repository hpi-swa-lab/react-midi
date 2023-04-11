as yet unclassified
startInteractionsClient: aClass

	CurrentClass := aClass.
	GRReact autoStartApplications: 'MidiWorld'.
	MIDIPlayer midiClass: NullRtMIDI.
	MIDIReact useRemote: '127.0.0.1'.
	HomeDworph startQuest