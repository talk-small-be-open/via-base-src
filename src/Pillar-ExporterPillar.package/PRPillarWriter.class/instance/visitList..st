visiting-document
visitList: aList
	canvas potentialNewLine.
	self nest: aList class markup do: [ super visitList: aList ]