as yet unclassified
render: props

	| midiReact channelMapping instruments channelAreas channelLabels |
	channelAreas := self useRef: Dictionary new.
	channelMapping := self useState: Dictionary new.
	midiReact := self useState: [MIDIReact syncClass start channelMapping: channelMapping get].
	instruments := self useState: Dictionary new.
	
	self useSingletonEffect: [[midiReact get stop]] dependencies: #().
	
	self
		useEffect: [midiReact get channelMapping: channelMapping get]
		dependencies: {channelMapping get}.
	self useEffect: [ | all |
		all := midiReact get component elementClass instrumentsMethods collect: [:m | m selector].
		all do: [:name |
			instruments get at: name ifAbsent: [
				instruments set: [:i |
					i copy
						at: name put: (Matrix4x4 withOffset: 0 @ 1 @ 0);
						yourself]]]].
	
	channelLabels := {'drums'. 'pad'. 'arp'. 'lead'. 'bass'}.
	
	^ ApplicationDworph new children: {
		GRProvider values: {#channelAreas -> channelAreas get} children: {
			GDStaticBody new
				translation: 0 @ 0 @ 0;
				children: {GDCollisionShape new shape: (GDBoxShape new extents: 10 m @ 1 m @ 10 m)}, ((1 to: self channelCount) collect: [:channel | | angle pointXY |
					angle := 360 / self channelCount * channel.
					pointXY := Point r: 1.2 m degrees: angle.
					MidiChannelArea new
						translation: pointXY x @ 0 @ pointXY y;
						rotation: 0 @ (Float pi * 1.5 - angle degreesToRadians) @ 0;
						label: (channelLabels at: channel);
						channel: channel]), (instruments get associations collect: [:instrument |
					MidiMethod new
						instrument: instrument key;
						transform: instrument value;
						onAssignChannel: [:channel | channelMapping set: [:old | old copyAt: instrument key put: channel]];
						onMove: [:transform | | volume |
							volume := transform offset y / MidiChannelArea height.
							self updateVolume: volume react: midiReact get for: instrument key];
						onTransform: [:transform | instruments set: [:i | i copyAt: instrument key put: transform]];
						key: instrument key asSymbol])}}