midi components
renderDrums: props

	^ {
		self
			loop: {self bassDrumFor: 1 / 4. self bassDrumFor: 1 / 4. self bassDrumFor: 1 / 4. self bassDrumFor: 1 / 4}
			channel: (props at: #channel)}