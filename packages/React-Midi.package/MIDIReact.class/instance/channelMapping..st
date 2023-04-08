as yet unclassified
channelMapping: aDictionary

	channelMapping := aDictionary.
	
	self class remoteHost ifNil: [^ self].
	
	[
		WebClient
			httpPost: ('http://{1}:11388/channel' format: {self class remoteHost})
			content: aDictionary asJsonString
			type: 'application/json'] fork