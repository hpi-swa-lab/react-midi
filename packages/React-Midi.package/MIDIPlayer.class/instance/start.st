as yet unclassified
start

	self stop.
	
	midi := RtMIDI new.
	lastMeasureStart := Time millisecondClock.
	process := [
		[
			self allChildrenDo: [:c | c step].
			10 milliSeconds wait] repeat] forkAt: Processor userBackgroundPriority