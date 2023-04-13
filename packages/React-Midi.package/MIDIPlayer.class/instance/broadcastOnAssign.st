as yet unclassified
broadcastOnAssign

	self allChildrenDo: [:b | b onAssign ifNotNil: [:c | c value]]