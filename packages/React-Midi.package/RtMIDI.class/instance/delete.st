api
delete

	(out notNil and: [out isNull not]) ifTrue: [self outFree: out]