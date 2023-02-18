as yet unclassified
stop

	process ifNotNil: #terminate.
	process := nil.
	midi ifNotNil: #delete.
	midi := nil