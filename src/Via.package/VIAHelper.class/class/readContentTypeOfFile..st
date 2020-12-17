as yet unclassified
readContentTypeOfFile: aPath
	| output |
	"Answers mime type in text form"
	output := MCLPlatform runShellCommand: 'file -b --mime-type "', aPath, '"'.
	^output trimBoth