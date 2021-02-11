testing
isValidReference: aString
	^aString beginsWith: (self code, ':')