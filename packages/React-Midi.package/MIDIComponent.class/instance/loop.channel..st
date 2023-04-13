as yet unclassified
loop: aCollection channel: aNumber

	| time |
	time := 0.
	^ MIDIReactNode new
		tag: MIDILoop;
		channel: aNumber;
		children: (aCollection gather: [:note |
			time := time + note duration.
			note isNotRest
				ifTrue: [
					{
						note
							atBeat: time - note duration}]
				ifFalse: [
					{
						MIDIReactNode new
							tag: MIDIEvent;
							atBeat: time}]])