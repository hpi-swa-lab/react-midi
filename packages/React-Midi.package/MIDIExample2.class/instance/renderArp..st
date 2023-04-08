as yet unclassified
renderArp: props

	self useEffect: [
		"Feedback"
		(props at: #player) control: 2 with: 0 channel: (props at: #channel).
	].
	
	^ {
		self loop: 4 of: (MIDIScale pentatonic: self a2) for: 1 / 8 channel: (props at: #channel).
		"self loop: 4 of: (MIDIScale pentatonic: self a2) for: 1 / 16 channel: (props at: #channel)."
		}