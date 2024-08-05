testing
matchesSearchString: aString
	^ entries anySatisfy: [ :each | each matchesSearchString: aString ]