instance creation
parse: aString with: aParser
	| index |
	index := aString findLast: [ :char | char isSeparator not ].
	^ self markup size < index
		ifFalse: [ aParser add: self new ]
		ifTrue: [ PRMatcherManager lineMatcherDefault parse: aString with: aParser ]