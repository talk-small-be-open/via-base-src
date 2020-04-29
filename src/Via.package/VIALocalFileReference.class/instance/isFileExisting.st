as yet unclassified
isFileExisting
	^self isFileDefined and: [VIAPlatform current fileExists: self filePath]