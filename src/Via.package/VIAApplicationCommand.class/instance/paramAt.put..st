accessing
paramAt: aKey put: aValue
	params ifNil: [params := Dictionary new].
	params at: aKey put: aValue