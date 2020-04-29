accessing
endTimeString
	^[endTime ifNotNil: [:t | t print24]] ifError: [nil]