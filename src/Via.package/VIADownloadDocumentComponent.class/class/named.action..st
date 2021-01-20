as yet unclassified
named: aString action: aBlock 
	^self new
		actionBlock: aBlock;
		documentName: aString;
		yourself