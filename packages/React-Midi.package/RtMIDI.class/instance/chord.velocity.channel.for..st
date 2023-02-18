api
chord: aCollection velocity: aVelocityNumber channel: aChannelNumber for: aDuration

	aCollection do: [:note |
		self note: note velocity: aVelocityNumber channel: aChannelNumber for: aDuration]