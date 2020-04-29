accessing
payloadComponent: anObject
	payloadComponent := anObject.

	payloadComponent onAnswer: [:value |
		self commit.
		self answer: value]