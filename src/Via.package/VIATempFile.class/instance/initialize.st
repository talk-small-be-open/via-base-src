as yet unclassified
initialize
	super initialize.

	fileBaseName := UUID new asString.
	fileName := fileBaseName, '.', self fileExtension.
	fileBasePath := VIAPlatform current fullPathNameFor: self tempDirectory.

"	file := (ServerFileDirectory on: fileFolder) forceNewFileNamed: self filePath."