as yet unclassified
isValid
	self ifNilAndAllowed: [^true] notAllowed: [^false].
	
	self isTooSmall ifTrue: [^false].
	self isTooBig ifTrue: [^false].

	^true