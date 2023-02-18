as yet unclassified
noteOn: aNoteNumber velocity: aVelocityNumber channel: aChannelNumber

	self
		channel: aChannelNumber
		do: [:channel | midi noteOn: aNoteNumber velocity: aVelocityNumber channel: channel]