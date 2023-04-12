as yet unclassified
component: aComponent

	player := MIDIPlayer new channelMapping: [:key | channelMapping ifNil: [nil] ifNotNil: [:c | c at: key ifAbsent: [nil]]].
	component := aComponent.
	react := CMFReactWithFibers new
		hostConfig: CMFHostConfigMidi new;
		renderRoot: (aComponent player: player) in: player