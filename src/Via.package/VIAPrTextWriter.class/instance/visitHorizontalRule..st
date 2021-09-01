visiting-document
visitHorizontalRule: anHorizontalRule
	self potentialNewLine.
	canvas nextPutAll: '----------------------'.
	self newLine.