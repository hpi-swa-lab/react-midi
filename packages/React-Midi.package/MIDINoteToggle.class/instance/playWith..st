as yet unclassified
playWith: anObject

	playing
		ifNotNil: [
			self player noteOff: playing velocity: self velocity channel: anObject channel.
			playing := nil]
		ifNil: [
			playing := self note.
			self player noteOn: playing velocity: self velocity channel: anObject channel]