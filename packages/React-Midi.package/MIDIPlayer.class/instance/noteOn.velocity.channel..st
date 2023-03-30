as yet unclassified
noteOn: aNoteNumber velocity: aVelocityNumber channel: aChannelNumber

	self channel: aChannelNumber do: [:channel |
		scheduled copy do: [:pair | (pair value class = MIDIScheduledNoteOff and: [pair value note = aNoteNumber and: [pair value channel = channel]]) ifTrue: [scheduled remove: pair]].
		
		midi noteOn: aNoteNumber velocity: aVelocityNumber channel: channel]