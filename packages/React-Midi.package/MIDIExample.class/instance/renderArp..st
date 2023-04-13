midi components
renderArp: props

	self useEffect: [].
	
	^ {self loop: 4 of: (MIDIScale pentatonic: self a2) for: 1 / 8 channel: (props at: #channel)}
	"self loop: 4 of: (MIDIScale pentatonic: self a2) for: 1 / 16 channel: (props at: #channel)."