as yet unclassified
generateNoteMethods

	| names order |
	names := #(#c #cs #d #ds #e #f #fs #g #gs #a #as #b).
	order := 1.
	12 to: 119 by: names size do: [:midi |
		names withIndexDo: [:name :index | self compile: ('{1}{2}

	^ {3}' format: {name. order. midi + (index - 1)}) classified: 'notes'].
		order := order + 1]