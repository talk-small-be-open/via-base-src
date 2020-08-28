as yet unclassified
ensureRandomCode
	randomCode ifNil: [
		self randomCode: self randomCodes atRandom ]