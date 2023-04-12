as yet unclassified
renderBass: props

	^ {
		self
			loop: {
				self note: 33 for: 1 / 4.
				self note: 40 for: 1 / 4.
				self note: 36 for: 1 / 4.
				self note: 43 for: 1 / 4.
				self note: 33 for: 1 / 4.
				self note: 36 for: 1 / 4.
				self note: 40 for: 1 / 4.
				self note: 36 for: 1 / 4}
			channel: (props at: #channel).
		self
			loop: {
				self note: 43 for: 1 / 3.
				self note: 33 for: 1 / 3.
				self note: 43 for: 1 / 3.
				self note: 40 for: 1 / 3.
				self note: 38 for: 1 / 3.
				self note: 43 for: 1 / 3}
			channel: (props at: #channel)}