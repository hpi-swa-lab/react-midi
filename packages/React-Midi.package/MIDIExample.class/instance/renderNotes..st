midi components
renderNotes: props

	^ self
		loop: {
			self note: 74 for: 1 / 4.
			self note: 76 for: 1 / 8.
			self note: 79 for: 1 / 8.
			self note: 69 for: 1 / 4.
			self note: 76 for: 1 / 8.
			self note: 69 for: 1 / 4.
			self note: 72 for: 1 / 4.
			self note: 74 for: 1 / 8.
			self note: 72 for: 1 / 8.
			self note: 76 for: 1 / 4.
			self note: 74 for: 1 / 8}
		channel: (props at: #channel)