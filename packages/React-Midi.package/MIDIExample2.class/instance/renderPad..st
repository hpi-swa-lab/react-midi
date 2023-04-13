as yet unclassified
renderPad: props
	

	self useEffect: [
		(props at: #player) control: 2 with: 40 channel: (props at: #channel).  "filter: default 40"
		(props at: #player) control: 3 with: 0 channel: (props at: #channel).  "phaser: default 0"
	].

	^ self loop: ({
		self control: 2 with: 0 for: 3 / 4.
	}, (
	(0.3 to: 1.0 by: 0.1) collect: [:p | self control: 2 with: (p * 127) rounded for: 1 / 32]))
	channel: (props at: #channel).