as yet unclassified
stop

	self runAllScheduled.
	process ifNotNil: #terminate.
	process := nil.
	midi ifNotNil: #delete.
	midi := nil