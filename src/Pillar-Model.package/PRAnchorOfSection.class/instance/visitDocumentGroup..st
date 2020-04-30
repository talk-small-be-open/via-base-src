visiting-document
visitDocumentGroup: aGroup
	aGroup
		setChildren:
			(aGroup children
				flatCollect: [ :child | 
					child class = PRHeader
						ifTrue: [ self addAnchorOf: child]
						ifFalse: [ 
							replacement push: {child}.
							self visit: child.
							replacement pop ] ])