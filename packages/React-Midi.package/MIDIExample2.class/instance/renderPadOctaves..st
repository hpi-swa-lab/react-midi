as yet unclassified
renderPadOctaves: props

	^ {
		self loop: {
			self note: self d1 for: 4 / 4.
			self note: self f1 for: 4 / 4.
			self note: self a0 for: 4 / 4.
			self note: self e1 for: 4 / 4.
		} channel: (props at: #channel).
		
		self loop: {
			self note: self d3 for: 4 / 4.
			self note: self f3 for: 4 / 4.
			self note: self a2 for: 4 / 4.
			self note: self e3 for: 4 / 4.
		} channel: (props at: #channel).
	}