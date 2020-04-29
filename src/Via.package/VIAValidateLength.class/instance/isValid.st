as yet unclassified
isValid
	self isTooShort ifTrue: [^false].
	self isTooLong ifTrue: [^false].

	^true