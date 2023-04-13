as yet unclassified
renderLead3: props
	| scale |
	
	scale := MIDIScale pentatonic: self d2.

	^ (self loop: 4 of: scale for: 1 / 4 channel: (props at: #channel))