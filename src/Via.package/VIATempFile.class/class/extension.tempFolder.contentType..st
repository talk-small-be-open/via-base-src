as yet unclassified
extension: aString tempFolder: aPath contentType: aMimeTypeString
	^ self basicNew
		setTempDirectory: aPath;
		setFileExtension: aString;
		setContentType: aMimeTypeString;
		initialize;
		yourself