as yet unclassified
renderDrumsKick: props

	^ self loop: {
		self restFor: 4 / 4
	} channel: (props at: #channel).