as yet unclassified
renderBassSlow: props
	| tl1 tl2 scale |
	
	scale := MIDIScale pentatonic: self d3.
	tl1 := [:base :top | { 
		self note: base for: 1 / 8.
		self note: top for: 1 / 8.
		self note: scale atRandom for: 1 / 8.
		self note: scale atRandom for: 1 / 8.
	}].
	tl2 := [:base :top | { 
		self note: base for: 1 / 8.
		self note: top for: 1 / 8.
		self note: scale atRandom for: 1 / 16.
		self note: scale atRandom for: 1 / 8.
		self note: scale atRandom for: 1 / 16.
	}].
	
	^ self loop: (
		(tl1 value: self d2 value: self d3),
		(tl2 value: self d2 value: self d3),
		(tl1 value: self f2 value: self f3),
		(tl2 value: self f2 value: self f3),
		(tl1 value: self a1 value: self a3),
		(tl2 value: self a1 value: self a3),
		(tl1 value: self e2 value: self e3),
		(tl2 value: self e2 value: self e3)
	) channel: (props at: #channel)