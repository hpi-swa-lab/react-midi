reconciliation
appendChild: aHostNode in: aParentHostNode fiber: aFiber

	(aParentHostNode children includes: aHostNode) ifTrue: [aParentHostNode children remove: aHostNode].
	aParentHostNode addChild: aHostNode