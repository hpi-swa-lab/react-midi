as yet unclassified
renderLead2: props
	| scale |
	
	scale := MIDIScale pentatonic: self d2.

	^ self loop: {
		self random: scale for: 1 / 8.
		self random: (scale orRest: 15) for: 1 / 8.
		self random: (scale orRest: 15) for: 1 / 8.
		self random: (scale orRest: 15) for: 1 / 8.
		self random: (scale orRest: 5) for: 1 / 8.
		self random: (scale orRest: 15) for: 1 / 8.
		self random: (scale orRest: 15) for: 1 / 8.
		self random: (scale orRest: 15) for: 1 / 8.
	} channel: (props at: #channel)