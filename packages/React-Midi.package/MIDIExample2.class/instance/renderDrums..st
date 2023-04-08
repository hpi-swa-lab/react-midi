as yet unclassified
renderDrums: props

	^ {
		self loop: {
			self note: self gs1 for: 1 / 16.
			self note: self gs1 for: 1 / 16.
			self note: self gs1 for: 1 / 8.
			self restFor: 4 / 8.
			self restFor: 1 / 8.
			self note: self gs1 for: 1 / 8
		} channel: (props at: #channel).
		
		self loop: {
			self restFor: 1 / 8.
			(self note: self fs1 for: 1 / 8) velocity: 10.
			self restFor: 1 / 8.
			(self note: self fs1 for: 1 / 8) velocity: 10.
			self restFor: 1 / 8.
			(self note: self fs1 for: 1 / 8) velocity: 10.
			(self note: self fs1 for: 1 / 16) velocity: 10.
			(self note: self fs1 for: 1 / 16) velocity: 10.
			(self note: self fs1 for: 1 / 8) velocity: 10
		} channel: (props at: #channel).
		
		self loop: {
			self note: self c1 for: 2 / 4.
			self note: self c1 for: 2 / 4.
		} channel: (props at: #channel)
		}.