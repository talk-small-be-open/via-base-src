as yet unclassified
childBricks
	^ self isSyntaxEmpty ifTrue: [
		Array with: description
	] ifFalse: [ 
		Array with: description with: syntax
	]