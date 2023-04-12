as yet unclassified
renderDrumsHiHat: props

	^ self loop: {
		self restFor: 1 / 8.
		self openHiHatFor: 1 / 8.
		
		self restFor: 1 / 4.
		
		self openHiHatFor: 1 / 8.
		self restFor: 1 / 16.
		self openHiHatFor: 1 / 16.
		
		self restFor: 1 / 8.
		self openHiHatFor: 1 / 8.
		
		self restFor: 1 / 8.
		self openHiHatFor: 1 / 8.
		
		self restFor: 1 / 4.
		
		self openHiHatFor: 1 / 8.
		self restFor: 1 / 16.
		self openHiHatFor: 1 / 16.
		
		self restFor: 1 / 8.
		self openHiHatFor: 1 / 8.
	} channel: (props at: #channel).