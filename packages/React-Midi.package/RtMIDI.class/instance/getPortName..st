private
getPortName: aNumber

	| len string |
	len := IntegerArray with: 0.
	self get: self assuredConnection port: aNumber nameInto: nil lengthPtr: len.
	
	string := ExternalType char allocateExternal: len first.
	self get: self assuredConnection port: aNumber nameInto: string lengthPtr: len.
	
	^ (string as: String) allButLast