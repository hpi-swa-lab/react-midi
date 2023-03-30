as yet unclassified
start

	self stop.
	
	midi := RtMIDI new.
	lastMeasureStart := Time millisecondClock.
	process := [
		[ | progress |
			progress := self step.
			self allChildrenDo: [:c | c step: progress].
			10 milliSeconds wait] repeat] forkAt: Processor userBackgroundPriority