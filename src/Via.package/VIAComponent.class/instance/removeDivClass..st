as yet unclassified
removeDivClass: aString
	self removeDecorationsMatching: [:each |
		(each isKindOf: VIADivDecoration) and: [each cssClass = aString]]