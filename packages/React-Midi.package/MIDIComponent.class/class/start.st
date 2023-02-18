as yet unclassified
start

	| react |
	react := MIDIReact new component: self new.
	react start.
	^ react