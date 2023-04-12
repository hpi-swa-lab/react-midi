as yet unclassified
isNotRest
	"If #note is not set it is a random note and therefore not a rest"
	
	^ (self properties includesKey: #note) not or: [self note > 0].