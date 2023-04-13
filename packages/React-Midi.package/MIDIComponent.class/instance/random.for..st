as yet unclassified
random: aCollection for: aNumber

	^ MIDIReactNode new
		tag: MIDINoteRandomToggle;
		choices: aCollection;
		duration: aNumber