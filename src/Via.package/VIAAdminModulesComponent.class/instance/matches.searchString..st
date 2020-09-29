testing
matches: aModule searchString: aString
	aString first isDigit
		ifTrue: [
			(aModule matchesIndexCode: aString) ifTrue: [ ^ true ]]
		ifFalse: [
			(aModule matchesSearchString: aString) ifTrue: [ ^ true ]].

	^ false