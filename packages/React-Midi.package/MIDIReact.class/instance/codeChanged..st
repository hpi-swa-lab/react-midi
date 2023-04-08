as yet unclassified
codeChanged: event

	event isDoIt ifTrue: [^ self].
	
	react codeChanged: event.
	
	self class remoteHost ifNil: [^ self].
	"delete"
	self flag: #todo.
	((event itemKind = SystemChangeNotifier methodKind and: [event isAdded or: [event isModified]]) and: [event itemClass = self component class]) ifTrue: [
		[
			WebClient
				httpPost: ('http://{1}:11388/code' format: {self class remoteHost})
				content: ({#sourceClass -> event itemClass name. #source -> (event itemClass >> event itemSelector) getSource} as: Dictionary) asJsonString
				type: 'application/json'] fork]