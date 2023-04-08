as yet unclassified
renderBass: props
	| t1 |
	"asdaassd"
	t1 := [
		self note: (MIDIScale pentatonicWithRest: self e1) atRandom for: 1/16.
		self note: (MIDIScale pentatonicWithRest: self e1) atRandom for: 1/8.
		self note: (MIDIScale pentatonicWithRest: self e1) atRandom for: 1/16.
		self note: (MIDIScale pentatonicWithRest: self e1) atRandom for: 1/8.
	].

	^ {
		self loop: {
			self note: self e1 for: 1 / 32.
			self restFor: 7 / 32.
			self restFor: 2 / 4.
			"t1 value."
			
			self restFor: 1 / 8.
			self note: self d1 for: 1 / 16.
			self restFor: 1 / 16.
		} channel: (props at: #channel).
	}