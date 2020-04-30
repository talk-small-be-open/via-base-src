as yet unclassified
transformParagraphWith1Child: paragraph
	^ paragraph children first class = self aboutClass
		ifTrue: [ 
			replacement push: {paragraph}.
			self specificVisitor: paragraph children first.
			replacement pop ]
		ifFalse: [ self visitNormalNode: paragraph ]