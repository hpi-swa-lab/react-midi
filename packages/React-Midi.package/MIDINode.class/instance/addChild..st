as yet unclassified
addChild: aNode

	aNode parent ifNotNil: [:p | p removeChild: aNode].
	children add: aNode.
	aNode parent: self