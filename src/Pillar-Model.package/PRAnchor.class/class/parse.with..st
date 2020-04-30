instance creation
parse: aString with: aParser
	^ aParser add: (self named: (aString allButFirst: self markup size))