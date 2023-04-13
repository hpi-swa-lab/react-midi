as yet unclassified
renderArpDouble: props
	| scale |
	
	scale := MIDIScale pentatonic: self d4.

	^ self loop: {
		self restFor: 2 / 4.
		self random: scale for: 1 / 8.
		self random: scale for: 1 / 8.
		self random: scale for: 1 / 8.
		self random: scale for: 1 / 8.
	} channel: (props at: #channel)