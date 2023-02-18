printing
printOn: aStream

	aStream nextPut: $<.
	aStream print: tag.
	aStream nextPutAll: ' />'