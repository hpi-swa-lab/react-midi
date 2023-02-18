api
control: aFirstNumber and: aSecondNumber channel: aChannelNumber

	self assert: aChannelNumber < 16.
	self assert: aFirstNumber <= 127.
	self assert: aSecondNumber <= 127.
	self send: {(2r1011 bitShift: 4) bitOr: aChannelNumber. aFirstNumber. aSecondNumber}