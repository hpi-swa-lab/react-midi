as yet unclassified
stepDownBeat: aTimeInMilliseconds delta: aDeltaNumber

	completed ifFalse: [^ self].
	
	completedMeasures := completedMeasures + 1.
	completedMeasures >= self countOfMeasures ifTrue: [
		startTime := aTimeInMilliseconds.
		completedMeasures := 0.
		lastCheck := aDeltaNumber negated]