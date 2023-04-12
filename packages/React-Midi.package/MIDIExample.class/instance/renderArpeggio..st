midi components
renderArpeggio: props

	^ (self
		loop: {
			self note: self a3 for: 1.3 / 4.
			self note: self c3 for: 1.7 / 4.
			self note: self e3 for: 1 / 4.
			}
		channel: (props at: #channel))