as yet unclassified
fromJson: aString 

	aString ifBlank: [ ^{} ].
	
	^ [
	NeoJSONReader fromString: aString
	] on: NeoJSONParseError do: [ :error | nil ]