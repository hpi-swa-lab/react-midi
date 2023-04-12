as yet unclassified
step: progress

	| startBeat endBeat |
	startBeat := lastCheck.
	endBeat := progress \\ self beats.
	
	startBeat > endBeat
		ifTrue: [
			self children do: [:child | | atBeat |
				atBeat := child atBeat.
				((atBeat >= startBeat and: [atBeat <= 1]) or: [atBeat <= endBeat and: [atBeat >= 0.0]]) ifTrue: [child playWith: self]]]
		ifFalse: [
			self children do: [:child | | atBeat |
				atBeat := child atBeat.
				(atBeat >= startBeat and: [atBeat < endBeat]) ifTrue: [child playWith: self]]].
	
	lastCheck := endBeat