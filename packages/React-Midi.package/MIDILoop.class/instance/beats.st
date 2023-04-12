as yet unclassified
beats

	^ (self children collect: [:c | c endBeat]) max ceiling