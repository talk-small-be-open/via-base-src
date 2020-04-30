instance creation
parse: aString with: aParser
	^ aParser addParagraph: (self withAll: (aParser parseTopText: aString))