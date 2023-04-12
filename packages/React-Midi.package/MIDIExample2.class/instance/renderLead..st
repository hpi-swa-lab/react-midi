as yet unclassified
renderLead: props

	^ self loop: 4 of: (MIDIScale pentatonicWithRest: self d2) for: 1 / 8 channel: (props at: #channel)