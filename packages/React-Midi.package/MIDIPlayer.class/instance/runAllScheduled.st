as yet unclassified
runAllScheduled

	scheduled do: [:pair | pair value value: self].
	scheduled removeAll