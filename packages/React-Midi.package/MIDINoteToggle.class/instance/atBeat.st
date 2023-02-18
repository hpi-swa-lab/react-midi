as yet unclassified
atBeat

	^ playing ifNotNil: [super atBeat + self duration] ifNil: [super atBeat]