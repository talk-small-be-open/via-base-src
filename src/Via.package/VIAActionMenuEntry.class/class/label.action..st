as yet unclassified
label: aString action: aValuable
	^ self new
		labelOrKey: aString;
		actionBlock: aValuable;
		yourself