as yet unclassified
renderDrumsRide: props

	^ self loop: {
		self rideFor: 4 / 4.
	} channel: (props at: #channel).