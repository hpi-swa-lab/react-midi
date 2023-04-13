as yet unclassified
control: aParamaterNumber with: aValueNumber for: aNumber

	^ MIDIReactNode new
		tag: MIDIControl;
		duration: aNumber;
		parameter: aParamaterNumber;
		value: aValueNumber