as yet unclassified
moveToFolderBase: aBasePath relative: aRelativePath
	VIAPlatform moveFileNamed: self filePath toFolder: (aBasePath, '/', aRelativePath).
	self fileBasePath: aBasePath.
	self fileRelativePath: aRelativePath.