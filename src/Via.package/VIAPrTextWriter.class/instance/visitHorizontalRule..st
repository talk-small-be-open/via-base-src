visiting-document
visitHorizontalRule: anHorizontalRule
"	self trimLastEmptyLine."
	self potentialNewLine.
	canvas nextPutAll: '----------------------'.
	self newLine.