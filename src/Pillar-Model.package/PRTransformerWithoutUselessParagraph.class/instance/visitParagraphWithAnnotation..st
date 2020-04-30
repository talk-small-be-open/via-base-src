visitor
visitParagraphWithAnnotation: paragraph
	^ {(paragraph
		setChildren:
			(paragraph children
				flatCollect: [ :child | 
					child class = self aboutClass
						ifTrue: [ 
							replacement push: {child}.
							self visit: child.
							self replaceParagraph.
							replacement pop ]
						ifFalse: [ self visitNormalNode: child ] ]))}