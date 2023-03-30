as yet unclassified
progress

	| now |
	now := Time utcMicrosecondClock.
	^ (now - startTime / (self measureLengthMilliseconds * 1000)) asFloat