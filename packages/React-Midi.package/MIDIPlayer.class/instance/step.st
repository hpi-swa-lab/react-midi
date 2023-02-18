as yet unclassified
step

	| measureLength now delta |
	measureLength := self measureLengthMilliseconds.
	now := Time millisecondClock.
	
	delta := now - (lastMeasureStart + measureLength).
	delta >= 0 ifTrue: [
		lastMeasureStart := now - delta.
		self allChildrenDo: [:c | c stepDownBeat: lastMeasureStart delta: delta]]