as yet unclassified
fromJson: aString 

	aString ifBlank: [ ^ nil ].
	
	^ [
	NeoJSONReader fromString: aString
	] on: NeoJSONParseError do: [ :error | nil ]