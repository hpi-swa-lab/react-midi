reconciliation
create: aNode

	| node |
	node := aNode tag new.
	aNode properties keysAndValuesDo: [:prop :value | node perform: prop asSimpleSetter with: value].
	^ node