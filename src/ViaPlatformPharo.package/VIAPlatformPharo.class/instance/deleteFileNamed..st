as yet unclassified
deleteFileNamed: aString
	aString ifBlank: [^self].
	aString asFileReference ensureDelete