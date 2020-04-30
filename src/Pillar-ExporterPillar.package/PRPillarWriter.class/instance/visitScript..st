visiting-document
visitScript: aScript
	canvas raw: PRScript markupBegin.
	self visitParametersOf: aScript.
	canvas
		newLine;
		nextPutAllLines: aScript text;
		newLine;
		raw: PRScript markupEnd