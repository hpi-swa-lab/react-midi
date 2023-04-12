as yet unclassified
renderBassSlow: props
	| scale |
	
	scale := MIDIScale pentatonic: self d1.
	
	^ self loop: {
		self restFor: 1 / 8.
		self random: scale for: 1 / 4.
		self random: scale for: 1 / 4.
		self random: scale for: 1 / 4.
		self random: scale for: 1 / 8.
	} channel: (props at: #channel)