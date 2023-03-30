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
							tag: MIDINoteToggle;
							note: note note;
							duration: note duration;
							atBeat: time - note duration}]
				ifFalse: [
					{
						MIDIReactNode new
							tag: MIDIEvent;
							atBeat: time}]])