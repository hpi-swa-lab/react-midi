as yet unclassified
renderBass2: props
	| tl1 scale |
	
	scale := MIDIScale pentatonic: self a2.
	tl1 := [:base | { 
		self note: base for: 1 / 16.
		self note: scale atRandom for: 1 / 16.
		self note: scale atRandom for: 1 / 16.
		self note: scale atRandom for: 1 / 16.
	}].
	
	^ self loop: (
		(tl1 value: self a0),
		(tl1 value: self a0),
		(tl1 value: self a0),
		(tl1 value: self a0),
		(tl1 value: self gs0),
		(tl1 value: self gs0),
		(tl1 value: self gs0),
		(tl1 value: self gs0),
		(tl1 value: self g0),
		(tl1 value: self g0),
		(tl1 value: self g0),
		(tl1 value: self g0),
		(tl1 value: self f0),
		(tl1 value: self f0),
		(tl1 value: self f0),
		(tl1 value: self f0)
	) channel: (props at: #channel)