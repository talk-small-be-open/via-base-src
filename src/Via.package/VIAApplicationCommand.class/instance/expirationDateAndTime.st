as yet unclassified
expirationDateAndTime
	^expirationDate ifNil: [createdAt + self lifetimeDuration]