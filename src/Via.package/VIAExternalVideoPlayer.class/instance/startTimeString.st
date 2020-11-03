accessing
startTimeString
	^[startTime ifNotNil: [:t | t print24]] ifError: [nil]