as yet unclassified
playWith: anObject

	| player playing |
	playing := self note.
	playing > 0 ifFalse: [^ self].
	
	player := self player.
	player noteOn: playing velocity: self velocity channel: anObject channel.
	
	(player mapChannel: anObject channel) ifNotNil: [:c | player in: self duration do: (MIDIScheduledNoteOff new note: playing channel: c)]