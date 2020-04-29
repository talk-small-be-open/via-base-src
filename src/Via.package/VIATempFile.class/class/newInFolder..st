as yet unclassified
newInFolder: aPath
	^ self basicNew
		setTempDirectory: aPath;
		initialize;
		yourself