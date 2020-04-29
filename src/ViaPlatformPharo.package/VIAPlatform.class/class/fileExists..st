as yet unclassified
fileExists: aFilePath
	| ref |
	ref := aFilePath asFileReference.
	^ref isFile and: [ref exists]