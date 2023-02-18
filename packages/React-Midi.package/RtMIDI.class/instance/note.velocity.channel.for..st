api
note: aNoteNumber velocity: aVelocityNumber channel: aChannelNumber for: aDuration

	self noteOn: aNoteNumber velocity: aVelocityNumber channel: aChannelNumber.
	(self future: aDuration asMilliSeconds) noteOff: aNoteNumber velocity: 0 channel: aChannelNumber