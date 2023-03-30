as yet unclassified
playWith: anObject

	| player playing |
	playing := self note.
	player := self player.
	player noteOn: playing velocity: self velocity channel: anObject channel.
	
	(player mapChannel: anObject channel) ifNotNil: [:c | player in: self duration do: [:p | p noteOff: playing velocity: 100 channel: c]]