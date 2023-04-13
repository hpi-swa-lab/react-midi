as yet unclassified
renderDrumsCrash: props

	^ self loop: {
		self crashFor: 4 / 4.
	} channel: (props at: #channel).