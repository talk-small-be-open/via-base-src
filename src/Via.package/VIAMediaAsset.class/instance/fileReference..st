accessing
fileReference: anObject
	self setFileReference: anObject.

	comment ifBlank: [
		comment := anObject comment ].
	title ifBlank: [
		title := anObject title ].
