as yet unclassified
renderMel: props
	| r1 |
	
	"sasda sa"
	
	r1 := [
		{
			self restFor: 1 / 8.
			self note: self e3 for: 1/8.
			self restFor: 1 / 8.
			self note: (MIDIScale pentatonic: self e2) atRandom for: 1/8.
			self restFor: 1 / 8.
			self restFor: 1 / 4.
			self restFor: 1 / 8.
		}
	].

	 ^ {
		self loop: r1 value channel: (props at: #channel).
	}