midi components
renderMelody: props

	true ifTrue: [^ nil].
	^ self loop: 4 of: (MIDIScale pentatonic: self a5) * 2 for: 1 / 8 channel: (props at: #channel)