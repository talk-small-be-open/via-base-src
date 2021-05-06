as yet unclassified
expirationDateAndTime
	^ expiresAt ifNil: [createdAt + 3 minutes]