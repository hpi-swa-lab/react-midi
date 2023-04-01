midi components
renderNotes: props

	^ self
		loop: {
			self note: 72 for: 1 / 3.
			self note: 72 for: 1 / 3.
			self note: 76 for: 1 / 3.
			self note: 74 for: 1 / 3.
			self note: 69 for: 1 / 3.
			self note: 72 for: 1 / 3}
		channel: (props at: #channel)