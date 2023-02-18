as yet unclassified
useEventQueue: midiReact

	| eventQueue |
	eventQueue := self useRef: nil.
	self
		useSingletonEffect: [ | newQueue |
			newQueue := SharedQueue new.
			midiReact get onMidiEvent: [:newEvent | newQueue nextPut: newEvent].
			eventQueue set: newQueue]
		dependencies: #().
	self useEffect: [
		eventQueue get ifNotNil: [:queue |
			[ | event |
				event := queue nextOrNil.
				event ifNotNil: [Transcript showln: event].
				event notNil] whileTrue]]