as yet unclassified
renderDrumsKick: props

	^ self loop: {
		self bassDrumFor: 2 / 4.
		self bassDrumFor: 2 / 4.
		self bassDrumFor: 2 / 4.
		self bassDrumFor: 2 / 4.
	} channel: (props at: #channel).