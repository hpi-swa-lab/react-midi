as yet unclassified
renderLead3: props
	| scale steps |
	
	scale := MIDIScale pentatonic: self d2.
	steps := self useState: 2.

	^ (self loop: steps get of: scale for: 1 / (steps get) channel: (props at: #channel))
	onMeasureStart: [
		steps set: [:prev | 
			| next |
			
			next := prev * 2.
			(next > 16) ifTrue: [2] ifFalse: [next]
		]
	].