as yet unclassified
control: aFirstNumber with: aSecondNumber channel: aChannelNumber

	self
		channel: aChannelNumber
		do: [:channel | midi control: aFirstNumber and: aSecondNumber channel: channel]