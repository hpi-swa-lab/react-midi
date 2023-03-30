as yet unclassified
pentatonicWithRest: aBaseNumber

	^ self new
		steps: #(0 3 5 7 10), {aBaseNumber negated};
		base: aBaseNumber