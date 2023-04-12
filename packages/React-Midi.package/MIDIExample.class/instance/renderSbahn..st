midi components
renderSbahn: props

	^ self
		loop: {
			self note: self c4 for: 1 / 4.
			self note: self c5 for: 1 / 4.
			self note: self c4 for: 1 / 4.
			self restFor: 1 / 4}
		channel: (props at: #channel)