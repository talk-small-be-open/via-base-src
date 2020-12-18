accessing
posterImageTimeString
	^[posterImageTime ifNotNil: [:d | d printVideoTime]] ifError: [nil]