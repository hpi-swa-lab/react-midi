as yet unclassified
renderLead: props
	| scale |
	
	scale := MIDIScale pentatonic: self d2.

	^ self loop: {
		self random: scale for: 1 / 8.
		self random: scale for: 1 / 8.
		self random: scale for: 1 / 8.
		self random: scale for: 1 / 8.
		self restFor: 3 / 8.
		self random: (scale orRest: 1) for: 1 / 8.
	} channel: (props at: #channel)