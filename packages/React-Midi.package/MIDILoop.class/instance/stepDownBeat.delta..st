as yet unclassified
stepDownBeat: aTimeInMilliseconds delta: aDeltaNumber

	completed ifFalse: [^ self].
	startTime := aTimeInMilliseconds.
	lastCheck := aDeltaNumber negated