as yet unclassified
orRest: aNumber

	^ MIDIScale new
		base: self base;
		steps: (self steps, (Array new: aNumber) collect: [:i | self base negated])