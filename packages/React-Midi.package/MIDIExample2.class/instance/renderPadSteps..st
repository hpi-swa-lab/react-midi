as yet unclassified
renderPadSteps: props
	| scale part |
	
	scale := MIDIScale new steps: #(0 2 5 7 10); base: self d2.
	part := [{
		self restFor: 1 / 4.
		self note: scale atRandom for: 1 / 4.
		self note: scale atRandom for: 1 / 4.
		self note: scale atRandom for: 1 / 4.
	}].
	"^ self loop: 4 of: (MIDIScale new steps: #(0 2 5 7 10); base: self d2) for: 1 / 4 channel: (props at: #channel)."
	^ self loop: (part value, part value, part value, part value) channel: (props at: #channel).