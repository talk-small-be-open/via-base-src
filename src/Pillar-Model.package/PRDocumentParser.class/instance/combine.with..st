adding
combine: aClass with: aDocumentItem
	^ self lastDocumentItem class = aClass
		ifTrue: [ self lastDocumentItem add: aDocumentItem ]
		ifFalse: [ self add: (aClass with: aDocumentItem) ]