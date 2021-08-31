visiting-document
visitListItem: anObject
	self newLine.
	canvas nextPutAll: '- '.
	self visitDocumentGroup: anObject