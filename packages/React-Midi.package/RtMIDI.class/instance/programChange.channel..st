api
programChange: aProgramNumber channel: aChannelNumber

	self assert: aChannelNumber < 16.
	self assert: aProgramNumber <= 127.
	self send: {(12 bitShift: 4) bitOr: aChannelNumber. aProgramNumber}