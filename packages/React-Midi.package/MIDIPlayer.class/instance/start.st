as yet unclassified
start

	self stop.
	
	midi := self class midiClass new.
	startTime := Time utcMicrosecondClock.
	lastMeasureStart := 0.0.
	process := [[self step] repeat] forkAt: Processor userSchedulingPriority