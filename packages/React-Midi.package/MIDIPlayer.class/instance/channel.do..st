as yet unclassified
channel: anObject do: aBlock

	^ anObject isNumber
		ifTrue: [aBlock value: anObject]
		ifFalse: [(channelMapping value: anObject) ifNotNil: [:c | aBlock value: c]]