as yet unclassified
expirationDate
	^expirationDate ifNil: [createdAt + self lifetimeDuration]