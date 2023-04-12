as yet unclassified
step

	| currentMeasureStart |
	progress := self progress.
	
	currentMeasureStart := progress floor.
	currentMeasureStart > lastMeasureStart ifTrue: [
		lastMeasureStart := currentMeasureStart.
		self allChildrenDo: [:c | c stepDownBeat]].
	
	scheduled copy do: [:pair |
		progress > pair key ifTrue: [
			scheduled remove: pair.
			pair value value: self]].
	
	self allChildrenDo: [:c | c step: progress].
	
	10 milliSeconds wait