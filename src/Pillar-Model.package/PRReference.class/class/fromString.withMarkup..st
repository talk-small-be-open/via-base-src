instance creation
fromString: aString withMarkup: aCharacter
	| classes class |
	class := aCharacter = $*
		ifTrue: [ PRLink ]
		ifFalse: [ self ].
	classes := class withAllConcreteClasses select: [ :each | each isValidReference: aString ].
	classes sort: [ :a :b | a priority < b priority ].
	^ classes first reference: aString