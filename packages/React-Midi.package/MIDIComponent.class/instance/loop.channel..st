as yet unclassified
loop: aCollection channel: aNumber

	| time |
	time := 0.
	^ MIDIReactNode new
		tag: MIDILoop;
		channel: aNumber;
		children: (aCollection gather: [:note |
			time := time + note duration.
			note note > 0
				ifTrue: [
					{
						MIDIReactNode new
							tag: MIDINoteOn;
							note: note note;
							atBeat: time - note duration.
						MIDIReactNode new
							tag: MIDINoteOff;
							note: note note;
							atBeat: time}]
				ifFalse: [
					{
						MIDIReactNode new
							tag: MIDIEvent;
							atBeat: time}]])