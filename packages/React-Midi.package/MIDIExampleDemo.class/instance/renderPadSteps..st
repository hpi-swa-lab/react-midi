as yet unclassified
renderPadSteps: props
	| scale part |
	
	scale := MIDIScale new steps: #(0 2 5 7 10); base: self d2.
	part := [{
		self restFor: 1 / 4.
		self random: scale for: 1 / 4.
		self random: scale for: 1 / 4.
		self random: scale for: 1 / 4.
	}].

	^ self loop: (part value, part value, part value, part value) channel: (props at: #channel).