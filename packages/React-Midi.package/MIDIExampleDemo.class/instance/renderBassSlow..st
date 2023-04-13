as yet unclassified
renderBassSlow: props
	
	^ self loop: {
		self restFor: 4 / 4
	} channel: (props at: #channel)