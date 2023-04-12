as yet unclassified
renderDrumsSnare: props

	^ self loop: {
		self restFor: 1 / 8.
		self snareFor: 1 / 4.
		self snareFor: 1 / 4.
		self snareFor: 1 / 4.
		self snareFor: 1 / 4.
		self snareFor: 1 / 4.
		self snareFor: 1 / 4.
		self snareFor: 1 / 4.
		self snareFor: 1 / 8.
	} channel: (props at: #channel).