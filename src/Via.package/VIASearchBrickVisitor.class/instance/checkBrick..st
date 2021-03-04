checkbox-brick-accessing
checkBrick: aBrick
	| fail |
	fail := [ ^ self ].
	
	searchClass ifNotNil: [
		(aBrick isKindOf: searchClass) ifFalse: fail
	].

	searchString ifNotBlank: [
		(aBrick matchesSearchString: searchString) ifFalse: fail
	].

	foundBricks add: aBrick