as yet unclassified
generateRhythmFor: aNumber selectors: aCollection durations: anotherCollection

	| total notes code |
	"Generate a sequence of notes based on your choices and copies to clipboard.

pass a number of measures to fill (e.g. 2 for 2 measures), a number of symbols that are either
- a note name (e.g. #a4 #a2 #b3)
- a message taking just the length as argument on MIDIComponent (e.g. #sideStickFor: or #openHiHatFor:)
- a category name on MIDIComponent (e.g. #drums)
and a number of durations I can pick, e.g. {1/2. 1/4. 1/8}.
- a MIDIScale instance (e.g. MIDIScale pentatonic: MIDIComponent basicNew a5)

TIPS
- repeat elements in the note choices to make them more likely

EXAMPLES
MIDIComponent generateRhythmFor: 2 selectors: #(drums) durations: {(1 / 4). (1 / 8)}
MIDIComponent generateRhythmFor: 2 selectors: #(openHiHatFor: closedHiHatFor: sideStickFor:) durations: {(1 / 8). (1 / 16)}
MIDIComponent generateRhythmFor: 2 selectors: #(closedHiHatFor:) durations: {(1 / 8). (1 / 16)}
MIDIComponent generateRhythmFor: 2 selectors: #(bassDrumFor: bassDrumFor: bassDrumFor: sideStickFor:) durations: {(1 / 8). (1 / 4)}
MIDIComponent generateRhythmFor: 2 selectors: {MIDIScale pentatonic: MIDIComponent basicNew a5} durations: {(1 / 8). (1 / 4)}"
	notes := Array streamContents: [:stream |
		aCollection do: [:note |
			note class = MIDIScale ifTrue: [stream nextPutAll: note flat] ifFalse: [
				(self canUnderstand: note)
					ifTrue: [stream nextPut: note]
					ifFalse: [stream nextPutAll: (MIDIComponent organization listAtCategoryNamed: note)]]]].
	
	total := 0.
	code := '\{{1}\}' format: {
		String streamContents: [:stream |
			[total < aNumber] whileTrue: [ | length note |
				note := notes atRandom.
				length := anotherCollection atRandom.
				total + length > aNumber ifTrue: [length := aNumber - total].
				total := total + length.
				stream nextPutAll: (note isNumber ifTrue: ['self note: {1} for: {2}. ' format: {note. length}] ifFalse: [
					note isUnary
						ifTrue: ['self note: self {1} for: {2}. ' format: {note. length}]
						ifFalse: ['self {1} {2}. ' format: {note. length}]])]]}.
	^ Clipboard clipboardText: (PPFormatter formatString: code class: UndefinedObject noPattern: true)