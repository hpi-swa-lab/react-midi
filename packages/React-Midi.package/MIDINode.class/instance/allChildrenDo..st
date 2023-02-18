as yet unclassified
allChildrenDo: aBlock

	self children do: [:c | c allChildrenDo: aBlock].
	aBlock value: self