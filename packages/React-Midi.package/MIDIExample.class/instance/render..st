midi components
render: props

	| player |
	player := props at: #player.
	
	self
		useEffect: [
			player bpm: 218.
			player programChange: 8 channel: 1.
			player programChange: 33 channel: 3]
		dependencies: {}.
	
	^ self class instrumentsMethods collect: [:m | (self methodAsComponent: m selector) channel: m selector]