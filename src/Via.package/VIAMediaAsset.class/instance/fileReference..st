accessing
fileReference: anObject
	self setFileReference: anObject.

	comment ifNil: [
		comment := anObject comment ].
	title ifNil: [
		title := anObject title ].
