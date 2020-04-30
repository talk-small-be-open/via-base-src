as yet unclassified
transformParagraph: paragraph
	^ paragraph children size = 1
		ifTrue: [ self transformParagraphWith1Child: paragraph ]
		ifFalse: [ self transformParagraphWithChildren: paragraph ]