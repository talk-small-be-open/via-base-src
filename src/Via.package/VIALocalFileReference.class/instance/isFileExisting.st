as yet unclassified
isFileExisting
	^self isFileDefined and: [VIAPlatform fileExists: self filePath]