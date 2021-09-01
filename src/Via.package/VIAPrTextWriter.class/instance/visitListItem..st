visiting-document
visitListItem: anObject
	self potentialNewLine.
	canvas nextPutAll: '- '.
	self visitDocumentGroup: anObject