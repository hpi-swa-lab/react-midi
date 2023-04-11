as yet unclassified
renderBass: props

	self useEffect: [
		"Space"
		(props at: #player) control: 3 with: 100 channel: (props at: #channel).
	] dependencies: {4}.

	^ self renderBass1: props.