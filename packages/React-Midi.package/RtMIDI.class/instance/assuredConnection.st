private
assuredConnection

	(out isNil or: [out isNull]) ifTrue: [
		out := self outCreate: 0 name: 'Squeak'.
		self assert: (out notNil and: [out isNull not]).
		self numPorts < 1
			ifTrue: [self open: out virtualPortNamed: 'squeak-virtual-out']
			ifFalse: [self open: out port: 1 name: 'squeak-out']].
	^ out