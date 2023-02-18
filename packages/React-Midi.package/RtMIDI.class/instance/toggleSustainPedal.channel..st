api
toggleSustainPedal: aBoolean channel: aChannelNumber

	self control: 64 and: (aBoolean ifTrue: [64] ifFalse: [0]) channel: aChannelNumber