as yet unclassified
volume: aPercentageNumber channel: aChannelNumber

	self
		channel: aChannelNumber
		do: [:channel | midi volume: ((aPercentageNumber clampLow: 0 high: 1) * 127) floor channel: channel]