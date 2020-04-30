instance creation
parse: aString with: aParser
	^ self withAll: (aParser parseText: (aString copyFrom: self markup size + 1 to: aString size - self markup size))