adding
addNested: anObject to: aGroup 
	aGroup children isEmpty 
		ifTrue: [  ^ aGroup add: anObject ].
	aGroup children last isGroup 
		ifTrue: [ ^ self addNested: anObject to: aGroup children last ] .
	^ aGroup add: anObject.