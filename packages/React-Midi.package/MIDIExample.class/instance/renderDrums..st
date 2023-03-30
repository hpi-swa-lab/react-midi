midi components
renderDrums: props

	^ {
		self
			loop: {
				self bassDrumFor: 1 / 4.
				self accousticSnareFor: 1 / 4.
				self bassDrumFor: 1 / 4.
				self accousticSnareFor: 1 / 4}
			channel: (props at: #channel).
		self
			loop: {
				self openHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8}
			channel: (props at: #channel)}