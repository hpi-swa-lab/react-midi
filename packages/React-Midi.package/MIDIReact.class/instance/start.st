as yet unclassified
start

	player start.
	react reRenderAll.
	
	SystemChangeNotifier uniqueInstance
		notify: self
		ofAllSystemChangesUsing: #codeChanged: