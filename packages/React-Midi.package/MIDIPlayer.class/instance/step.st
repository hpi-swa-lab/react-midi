as yet unclassified
step

	| measureLength now currentMeasureStart |
	measureLength := self measureLengthMilliseconds.
	now := Time millisecondClock.
	
	progress := (now - lastMeasureStart / measureLength) asFloat.
	
	currentMeasureStart := progress floor.
	currentMeasureStart > lastMeasureStart ifTrue: [
		lastMeasureStart := currentMeasureStart.
		self allChildrenDo: [:c | c stepDownBeat]].
	
	scheduled copy do: [:pair |
		pair key >= progress ifTrue: [
			scheduled remove: pair.
			pair value value: self]].
	
	^ progress