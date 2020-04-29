as yet unclassified
moveToSubFolderNamed: aString
	self moveToFolderBase: self fileBasePath relative: (self fileRelativePath, '/', aString)