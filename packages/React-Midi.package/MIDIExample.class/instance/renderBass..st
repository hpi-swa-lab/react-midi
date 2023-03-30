midi components
renderBass: props

	^ self loop: 4 of: (MIDIScale pentatonic: self a3) for: 1 / 4 channel: (props at: #channel)