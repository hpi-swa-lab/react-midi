as yet unclassified
noteOff: aNoteNumber velocity: aVelocityNumber channel: aChannelNumber

	self
		channel: aChannelNumber
		do: [:channel | midi ifNotNil: [:m | m noteOff: aNoteNumber velocity: aVelocityNumber channel: channel]]