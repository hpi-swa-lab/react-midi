as yet unclassified
renderLead: props

	^ self loop: 4 of: (MIDIScale pentatonicWithRest: self a3) for: 1 / 16 channel: (props at: #channel)