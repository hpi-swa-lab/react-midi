reconciliation
insert: aHostNode before: aSiblingHostNode in: aHostNodeParent fiber: aFiber

	(aHostNodeParent children includes: aHostNode) ifTrue: [
		aHostNode parent: nil.
		aHostNodeParent children remove: aHostNode].
	
	aHostNode parent: aHostNodeParent.
	aHostNodeParent children add: aHostNode before: aSiblingHostNode