*Via
equalElements: anotherCollection
	^self size = anotherCollection size and: [self includesAll: anotherCollection]