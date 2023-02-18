as yet unclassified
renderMelody: props

	^ self loop: 4 of: (MIDIScale pentatonic: self a5) * 2 for: 1 / 8 channel: (props at: #channel)