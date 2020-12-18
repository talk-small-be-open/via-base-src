accessing
startSeconds
	^ startTime ifNil: [ 0 ] ifNotNil: [startTime asSeconds]