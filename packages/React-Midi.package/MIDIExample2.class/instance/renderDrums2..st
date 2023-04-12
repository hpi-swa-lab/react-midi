as yet unclassified
renderDrums2: props

	^ self loop: {
		self restFor: (1/8). self restFor: (1/8). self restFor: (1/8). self note: self gs1 for: (1/8). self restFor: (1/8). self note: self gs1 for: (1/8). self note: self gs1 for: (1/16). self note: self gs1 for: (1/8). self note: self gs1 for: (1/16). self restFor: (1/16). self restFor: (1/16). self restFor: (1/8). self note: self gs1 for: (1/8). self note: self gs1 for: (1/16). self restFor: (1/8). self restFor: (1/8). self note: self gs1 for: (1/16). self note: self gs1 for: (1/16). self restFor: (1/8). self restFor: (1/16).
	} channel: (props at: #channel)