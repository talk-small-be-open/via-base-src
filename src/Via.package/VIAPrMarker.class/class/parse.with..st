instance creation
parse: aString with: aParser
	| markerName |
	markerName := aString
		copyFrom: self markup size + 1
		to: aString size - self markup size.
	
	^self named: markerName.
