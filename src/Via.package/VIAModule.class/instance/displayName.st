as yet unclassified
displayName
	^self isDraft
		ifFalse: [self title]
		ifTrue: [self title, ' (DRAFT)']