as yet unclassified
readContentTypeOfFile: aPath
	| output |
	output := MCLPlatform runShellCommand: 'file -b --mime-type "', aPath, '"'.
	^output trimBoth