as yet unclassified
removeChild: aChild

	children remove: aChild.
	self player ifNotNil: [:p | aChild allChildrenDo: [:c | c removedFromPlayer: p]]