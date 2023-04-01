as yet unclassified
bpm: aNumber

	bpm ~= aNumber ifTrue: [self allChildrenDo: [:c | c reset]].
	bpm := aNumber max: 1