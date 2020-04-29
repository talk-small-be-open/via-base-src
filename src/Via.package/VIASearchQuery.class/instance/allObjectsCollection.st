as yet unclassified
allObjectsCollection
	^self hasBaseCollection
		ifTrue: [self baseCollection]
		ifFalse: [self defaultBaseCollection].