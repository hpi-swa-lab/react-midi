as yet unclassified
addChild: aNode

	super addChild: aNode.
	aNode allChildrenDo: [:c | c addedToPlayer: self]