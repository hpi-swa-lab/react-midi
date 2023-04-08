as yet unclassified
renderPad: props

	^ {
		self loop: {
			self note: self a1 for: 4 / 4.
			self note: self gs1 for: 4 / 4.
			self note: self g1 for: 4 / 4.
			self note: self f1 for: 4 / 4.
		} channel: (props at: #channel).
		
		self loop: {
			self note: self e2 for: 16 / 4.
		} channel: (props at: #channel).
		}