accessing
posterImageTimeMs
	^ posterImageTime ifNil: [0] ifNotNil: [posterImageTime asMilliSeconds]