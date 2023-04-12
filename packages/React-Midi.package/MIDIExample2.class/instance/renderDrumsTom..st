as yet unclassified
renderDrumsTom: props

	^ self loop: {
		self restFor: 1 / 8.
		self tomLowFor: 1 / 16.
		self tomLowFor: 1 / 16.
		
		self restFor: 3 / 16.
		self tomLowFor: 1 / 16.
		
		self restFor: 1 / 8.
		self tomLowFor: 1 / 8.
		
		self restFor: 1 / 16.
		self tomLowFor: 1 / 8.
		self restFor: 1 / 16.
		
		self restFor: 1 / 8.
		self tomLowFor: 1 / 16.
		self tomLowFor: 1 / 16.
		
		self restFor: 1 / 4.
		
		self tomLowFor: 1 / 8.
		self restFor: 1 / 16.
		self tomLowFor: 1 / 16.
		
		self restFor: 1 / 8.
		self tomLowFor: 1 / 8.
	} channel: (props at: #channel).