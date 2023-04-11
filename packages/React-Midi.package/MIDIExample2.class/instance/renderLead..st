as yet unclassified
renderLead: props

	^ self loop: 4 of: (MIDIScale pentatonic: self a2) for: 1 / 4 channel: (props at: #channel)