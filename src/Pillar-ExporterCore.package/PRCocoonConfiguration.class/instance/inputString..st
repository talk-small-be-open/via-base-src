accessing
inputString: aString
	"I transform aString as a File and I add it to the properties"
	
	| inputFile |
	self baseDirectory: FileSystem memory root.
	inputFile := self baseDirectory / 'input.conf'.
	inputFile writeStreamDo: [ :stream | stream nextPutAll: aString ].
	self inputFiles: (Array with: inputFile).