as yet unclassified
filePath
	fileName ifBlank: [^'noname'].
	
	fileRelativePath ifBlank: [^self fileBasePath, '/', fileName].

	^self fileBasePath, '/', fileRelativePath, '/', fileName