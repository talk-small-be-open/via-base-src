visiting-document
visitParagraph: anObject
	self potentialNewLine.
	self visitDocumentGroup: anObject.
	self newLine.
	self newLine.