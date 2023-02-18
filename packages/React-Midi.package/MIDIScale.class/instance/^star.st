as yet unclassified
* aNumber

	| allSteps |
	allSteps := self steps.
	aNumber timesRepeat: [allSteps := allSteps, ((allSteps last: self steps size) collect: [:s | s + 12])].
	^ self copy
		base: self base;
		steps: allSteps