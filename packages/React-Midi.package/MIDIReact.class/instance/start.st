as yet unclassified
start

	Running ifNotNil: [Running stop].
	Running := self.
	
	player start.
	react reRenderAll.
	
	SystemChangeNotifier uniqueInstance
		notify: self
		ofAllSystemChangesUsing: #codeChanged: