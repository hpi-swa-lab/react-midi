midi components
renderNotes: props

	^ self
		loop: {
			self note: 79 for: 1 / 8.
			self note: 93 for: 1 / 8.
			self note: 69 for: 1 / 8.
			self note: 79 for: 1 / 16.
			self note: 100 for: 1 / 8.
			self note: 72 for: 1 / 16.
			self note: 76 for: 1 / 8.
			self note: 79 for: 1 / 8.
			self note: 98 for: 1 / 16.
			self note: 86 for: 1 / 16}
		channel: (props at: #channel)