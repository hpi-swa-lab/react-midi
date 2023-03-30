as yet unclassified
stop

	scheduled do: [:pair | pair value value: self].
	process ifNotNil: #terminate.
	process := nil.
	midi ifNotNil: #delete.
	midi := nil