as yet unclassified
renderLead: props

	^ self loop: 4 of: (MIDIScale pentatonic: self a2) for: 1 / 8 channel: (props at: #channel)