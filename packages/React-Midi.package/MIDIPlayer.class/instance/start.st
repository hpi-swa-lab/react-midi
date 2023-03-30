as yet unclassified
start

	self stop.
	
	midi := RtMIDI new.
	startTime := Time utcMicrosecondClock.
	lastMeasureStart := 0.0.
	process := [[self step] repeat] forkAt: Processor userSchedulingPriority