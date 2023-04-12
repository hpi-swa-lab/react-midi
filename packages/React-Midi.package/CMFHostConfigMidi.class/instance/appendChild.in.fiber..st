reconciliation
appendChild: aHostNode in: aParentHostNode fiber: aFiber

	(aParentHostNode children includes: aHostNode) ifTrue: [
		aHostNode parent: nil.
		aParentHostNode children remove: aHostNode].
	aParentHostNode addChild: aHostNode