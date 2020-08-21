as yet unclassified
downloadRawSourceModule: aModule
	| file |
	file := aModule generateRawSourceFile.
	self sendFileToBrowser: file named: (aModule fileDisplayName, '_RawSource.txt')