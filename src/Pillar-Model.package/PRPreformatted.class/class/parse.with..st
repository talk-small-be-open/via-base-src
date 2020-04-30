instance creation
parse: aString with: aParser
	^ aParser combine: self with: (PRText content: (aString allButFirst: self markup size))