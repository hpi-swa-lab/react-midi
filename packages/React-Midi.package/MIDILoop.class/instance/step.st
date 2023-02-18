as yet unclassified
step

	| start end delta |
	startTime ifNil: [^ self].
	completed ifFalse: [^ self].
	
	start := lastCheck.
	end := Time millisecondClock - startTime.
	self children do: [:child | | atMilliseconds |
		atMilliseconds := self player beatToMillisecondOffset: child atBeat.
		(atMilliseconds >= start and: [atMilliseconds < end]) ifTrue: [child playWith: self]].
	lastCheck := end.
	
	delta := end - self duration.
	delta > 0 ifTrue: [
		completed := true.
		startTime := Time millisecondClock + delta.
		lastCheck := delta negated]