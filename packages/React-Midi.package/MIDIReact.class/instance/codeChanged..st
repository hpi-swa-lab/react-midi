as yet unclassified
codeChanged: event

	event isDoIt ifTrue: [^ self].
	
	react codeChanged: event.
	
	"delete"
	self flag: #todo.
	((event itemKind = SystemChangeNotifier methodKind and: [event isAdded or: [event isModified]]) and: [event itemClass = self midiClass]) ifTrue: [
		self
			sendSync: 'code'
			data: ({#sourceClass -> event itemClass name. #source -> (event itemClass >> event itemSelector) getSource} as: Dictionary)]