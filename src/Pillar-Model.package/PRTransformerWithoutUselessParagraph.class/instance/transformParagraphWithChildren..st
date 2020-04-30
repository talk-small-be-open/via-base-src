as yet unclassified
transformParagraphWithChildren: paragraph
	^ (paragraph children contains: [ :each | each class = self aboutClass ])
		ifTrue: [ self visitParagraphWithAnnotation: paragraph ]
		ifFalse: [ self visitNormalNode: paragraph ]