as yet unclassified
sizeOfFile: aString
	^[aString asFileReference size] ifError: [0]