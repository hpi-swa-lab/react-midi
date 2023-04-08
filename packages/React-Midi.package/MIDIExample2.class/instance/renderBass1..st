as yet unclassified
renderBass1: props
	| tl1 tl2 scale |
	
	scale := MIDIScale pentatonic: self a2.
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
		(tl1 value: self a1 value: self a2),
		(tl2 value: self a1 value: self a2),
		(tl1 value: self gs1 value: self a2),
		(tl2 value: self gs1 value: self a2),
		(tl1 value: self g1 value: self g2),
		(tl2 value: self g1 value: self g2),
		(tl1 value: self f1 value: self f2),
		(tl2 value: self f1 value: self f2)
	) channel: (props at: #channel)