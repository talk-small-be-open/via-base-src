testing
matches: aModule searchString: aString
	aString first isDigit
		ifTrue: [
			(aModule matchesIndexCode: aString) ifTrue: [ ^ true ]]
		ifFalse: [
			(aModule matchesSearchString: aString) ifTrue: [ ^ true ]].

	(aModule tasks anySatisfy: [ :each | each matchesSearchString: aString ]) ifTrue: [ ^ true ].
	
	^ false