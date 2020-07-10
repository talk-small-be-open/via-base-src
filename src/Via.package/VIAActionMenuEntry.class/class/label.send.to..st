as yet unclassified
label: aString send: aSelector to: anObject
	^ self new
		labelOrKey: aString;
		actionSend: aSelector to: anObject;
		yourself