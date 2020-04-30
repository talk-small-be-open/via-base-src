visiting-document
visitDocument: aDocument
	aDocument properties
		keysAndValuesDo: [ :key :value | 
			canvas
				raw: PRDocumentParser propertiesMarkupBegin;
				nextPutAll: key;
				raw: PRDocumentParser propertiesKeywordValueSeparator;
				nextPut: Character space;
				nextPutAll: value;
				raw: PRDocumentParser propertiesMarkupEnd.
			canvas newLine ].
	super visitDocument: aDocument