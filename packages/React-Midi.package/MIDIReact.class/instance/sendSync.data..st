as yet unclassified
sendSync: aString data: data

	self class remoteHost ifNil: [^ self].
	
	[
		[
			WebClient
				httpPost: ('http://{1}:11388/{2}' format: {self class remoteHost. aString})
				content: data asJsonString
				type: 'application/json']
			on: ConnectionTimedOut, ConnectionClosed
			do: [:err | ]] fork