as yet unclassified
loop: aCountNumber of: aCollection for: aDurationNumber channel: aNumber

	| time |
	time := 0.
	^ MIDIReactNode new
		tag: MIDILoop;
		channel: aNumber;
		children: ((1 to: aCountNumber) collect: [:note |
			time := time + aDurationNumber.
			MIDIReactNode new
				tag: MIDINoteRandomToggle;
				choices: aCollection;
				duration: aDurationNumber;
				atBeat: time - aDurationNumber])