as yet unclassified
duration

	^ (self children collect: [:c | self player beatToMillisecondOffset: c endBeat]) max