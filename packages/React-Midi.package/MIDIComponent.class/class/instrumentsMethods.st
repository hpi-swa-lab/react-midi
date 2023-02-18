as yet unclassified
instrumentsMethods

	^ self methodDict values select: [:m | (m selector beginsWith: 'render') and: [m selector size > 7]]