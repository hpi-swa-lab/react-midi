as yet unclassified
render: props

	| midiReact channelMapping instruments channelAreas |
	channelAreas := self useRef: Dictionary new.
	midiReact := self useState: [MIDIExample start].
	channelMapping := self useState: Dictionary new.
	instruments := self useState: Dictionary new.
	
	self useSingletonEffect: [[midiReact get stop]] dependencies: #().
	
	self
		useEffect: [
			midiReact get channelMapping: channelMapping get.
			Transcript showln: channelMapping get]
		dependencies: {channelMapping get}.
	self useEffect: [ | all |
		all := midiReact get component elementClass instrumentsMethods collect: [:m | m selector].
		all do: [:name |
			instruments get at: name ifAbsent: [
				instruments set: [:i |
					i copy
						at: name put: (Matrix4x4 withOffset: 0 @ 1 @ 0);
						yourself]]]].
	
	^ ApplicationDworph new children: {
		GRProvider values: {#channelAreas -> channelAreas get} children: {
			GDStaticBody new
				translation: 0 @ -1 m @ 0;
				children: {GDCollisionShape new shape: (GDBoxShape new extents: 10 m @ 1 m @ 10 m)}, ((1 to: self channelCount) collect: [:channel | | angle pointXY |
					angle := 360 / self channelCount * channel.
					pointXY := Point r: 2 degrees: angle.
					MidiChannelArea new
						translation: pointXY x @ 0 @ pointXY y;
						channel: channel]), (instruments get associations collect: [:instrument |
					MidiBlock new
						instrument: instrument key;
						globalTransform: instrument value;
						onAssignChannel: [:channel | channelMapping set: [:old | old copyAt: instrument key put: channel]];
						onTransform: [:transform | instruments set: [:i | i copyAt: instrument key put: transform]];
						key: instrument key asSymbol])}}