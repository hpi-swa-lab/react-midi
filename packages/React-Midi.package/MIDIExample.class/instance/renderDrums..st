midi components
renderDrums: props

	^ {
		self
			loop: {
				self bassDrumFor: 1 / 8.
				self bassDrumFor: 1 / 8.
				self bassDrumFor: 1 / 8.
				self bassDrumFor: 1 / 8.
				self bassDrumFor: 1 / 4.
				self bassDrumFor: 1 / 4.
				self sideStickFor: 1 / 4.
				self bassDrumFor: 1 / 8.
				self sideStickFor: 1 / 8.
				self sideStickFor: 1 / 4.
				self bassDrumFor: 1 / 4}
			channel: (props at: #channel).
		self
			loop: {
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 8.
				self closedHiHatFor: 1 / 16.
				self closedHiHatFor: 1 / 8}
			channel: (props at: #channel)}