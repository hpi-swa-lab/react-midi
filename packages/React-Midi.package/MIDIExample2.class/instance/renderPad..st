as yet unclassified
renderPad: props
	

	self useEffect: [
		"(props at: #player) control: 2 with: 30 channel: (props at: #channel)."  "filter: default 40"
		(props at: #player) control: 3 with: 0 channel: (props at: #channel).  "phaser: default 0"
	].

	^ self loop: ({
		self control: 2 with: 30 for: 3 / 4.
	}, (self control: 2 from: 30 to: 100 for: 1 / 4))
	channel: (props at: #channel).