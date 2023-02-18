as yet unclassified
doesNotUnderstand: aMessage

	| key |
	key := aMessage selector.
	(key precedence = 3 and: [(key indexOf: $:) = key size]) ifTrue: [ | value prop |
		prop := key allButLast asSymbol.
		value := aMessage arguments first.
		properties at: prop put: value.
		^ self].
	(key precedence = 1 and: [properties includesKey: key]) ifTrue: [^ properties at: key].
	^ super doesNotUnderstand: aMessage