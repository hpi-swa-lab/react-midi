as yet unclassified
renderBassFast: props
	| tl1 scale |
	
	scale := MIDIScale pentatonic: self d2.
	tl1 := [:base | { 
		self note: base for: 1 / 16.
		self random: scale for: 1 / 16.
		self random: scale for: 1 / 16.
		self random: scale for: 1 / 16.
	}].
	
	^ self loop: (
		(tl1 value: self d2),
		(tl1 value: self d2),
		(tl1 value: self d2),
		(tl1 value: self d2),
		(tl1 value: self f2),
		(tl1 value: self f2),
		(tl1 value: self f2),
		(tl1 value: self f2),
		(tl1 value: self a1),
		(tl1 value: self a1),
		(tl1 value: self a1),
		(tl1 value: self a1),
		(tl1 value: self e2),
		(tl1 value: self e2),
		(tl1 value: self e2),
		(tl1 value: self e2)
	) channel: (props at: #channel)