as yet unclassified
renderPad: props

	self useEffect: [
		(props at: #player) control: 2 with: 40 channel: (props at: #channel).  "filter: default 40"
		(props at: #player) control: 3 with: 0 channel: (props at: #channel).  "phaser: default 0"
	].

	^ self loop: {
		self restFor: 4 / 4.
	} channel: (props at: #channel).