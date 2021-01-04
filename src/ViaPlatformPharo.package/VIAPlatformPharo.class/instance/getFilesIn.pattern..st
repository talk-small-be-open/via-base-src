as yet unclassified
getFilesIn: aFolderString pattern: aPatternString
	^ (aFolderString asFileReference filesMatching: aPatternString) collect: [ :each | each pathString ]