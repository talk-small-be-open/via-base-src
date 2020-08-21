as yet unclassified
saveUiTextsToFile
	| tempFile text |
	
	tempFile := VIATempFile txtForXSendfile.

	text := String streamContents: [ :s |	
		self uiTexts keys sorted do: [:key |
			| value |
			value := self uiTextAt: key.
			s nextPut: $#.
			s nextPutAll: key.
			s tab.
				"Prevent nil values from writing 'nil' in the file"
				value ifNotNil: [
					s nextPutAll: value].
				s tab. "End delimiter, before line break."
				s nextPutAll: '---END---'.
				s lf]].

	tempFile write: text.

	^ tempFile