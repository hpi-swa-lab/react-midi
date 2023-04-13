as yet unclassified
renderBassFastHigh: props
	| tl1 t2 scale |
	
	scale := MIDIScale pentatonic: self d3.
	tl1 := [:base | { 
		self note: base for: 1 / 16.
		self random: scale for: 1 / 16.
		self random: scale for: 1 / 16.
		self random: scale for: 1 / 16.
		self random: scale for: 1 / 16.
		self random: scale for: 1 / 16.
		self random: scale for: 1 / 16.
		self random: scale for: 1 / 16.
	}].

	t2 := [:base | 
		(tl1 value: base),
		(tl1 value: base)
	].
	
	^ self loop: (
		(t2 value: self d3),
		(t2 value: self f3),
		(t2 value: self a3),
		(t2 value: self e3)
	) channel: (props at: #channel)