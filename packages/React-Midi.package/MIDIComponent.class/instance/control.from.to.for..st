as yet unclassified
control: aParameterNumber from: aStartNumber to: aEndNumber for: aNumber
	| distance steps |
	
	distance := aEndNumber - aStartNumber.
	steps := aNumber / (1 / 32).
	^ (0 to: (steps - 1)) collect: [:i | 
		self control: aParameterNumber with: (aStartNumber + ((i + 1) / steps * distance) rounded) for: 1 / 32].