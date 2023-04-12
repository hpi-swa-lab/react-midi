as yet unclassified
startInteractionsClient: aClass

	CurrentClass := aClass.
	GRReact autoStartApplications: 'MidiWorld'.
	MIDIPlayer midiClass: NullRtMIDI.
	MIDIReact useRemote: '192.168.17.160'.
	HomeDworph startQuest