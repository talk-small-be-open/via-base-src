parsing
parseFile: aFile withConfiguration: aConfiguration
	"I parse a file and i return a PRDocument of the file."
	
	| stream |
	stream := FileStream readOnlyFileNamed: aFile.
	^ aConfiguration transformForIncludeFile: (PRDocumentParser parse: stream).