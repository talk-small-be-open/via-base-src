adding
addParagraph: aParagraph
	aParagraph children isEmpty
		ifTrue: [ self add: PREmptyParagraph new ]
		ifFalse: [
			self lastDocumentItem class = aParagraph class
				ifFalse: [ self add: aParagraph ]
				ifTrue: [
					self lastDocumentItem
						add: PRLineBreak new;
						addAll: aParagraph children ] ].
	^ self lastDocumentItem