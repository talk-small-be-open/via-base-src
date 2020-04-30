as yet unclassified
evaluate
	| content |
	content := self evaluationString.
	^ [ self removePossibleParagraph: ((PRDocumentParser parse: content) children ) ]
		on: Error
		do: [ :e | PRBoldFormat with: (PRText content: e messageText) ]