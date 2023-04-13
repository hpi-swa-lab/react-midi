as yet unclassified
renderLead2Again: props
	| scale |
	
	scale := MIDIScale pentatonic: self d2.

	^ self loop: {
		self random: (scale orRest: 5) for: 1 / 8.
		self random: (scale orRest: 10) for: 1 / 8.
		self random: (scale orRest: 10) for: 1 / 8.
		self random: (scale orRest: 10) for: 1 / 8.
		self random: (scale orRest: 5) for: 1 / 8.
		self random: (scale orRest: 10) for: 1 / 8.
		self random: (scale orRest: 10) for: 1 / 8.
		self random: (scale orRest: 10) for: 1 / 8.
	} channel: (props at: #channel)