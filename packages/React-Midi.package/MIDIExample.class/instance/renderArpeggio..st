midi components
renderArpeggio: props

	| base |
	base := self useState: self c4.
	^ (self
		loop: {
			self note: base get + 0 for: 1 / 8.
			self note: base get + 4 for: 1 / 8.
			self note: base get + 7 for: 1 / 8.
			self note: base get + 12 for: 1 / 8.
			self note: base get + 7 for: 1 / 8.
			self note: base get + 4 for: 1 / 8}
		channel: (props at: #channel)) onMeasureStart: [base set: [:previous | previous + 1]]