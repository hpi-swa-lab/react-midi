as yet unclassified
noteOff: aNoteNumber velocity: aVelocityNumber channel: aChannelNumber

	self
		channel: aChannelNumber
		do: [:channel | midi noteOff: aNoteNumber velocity: aVelocityNumber channel: channel]