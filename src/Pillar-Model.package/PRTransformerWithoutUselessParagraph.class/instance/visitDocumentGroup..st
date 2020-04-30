visiting-document
visitDocumentGroup: aGroup
	aGroup
		setChildren:
			(aGroup children
				flatCollect: [ :child | 
					child class = PRParagraph
						ifTrue: [ self transformParagraph: child ]
						ifFalse: [ self visitNormalNode: child ] ])