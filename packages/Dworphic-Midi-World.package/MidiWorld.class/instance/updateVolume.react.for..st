as yet unclassified
updateVolume: aNumber react: aReact for: aChannel

	aReact player volume: aNumber channel: aChannel.
	aReact sendSync: 'volume' data: ({#channel -> aChannel. #volume -> aNumber} as: Dictionary)