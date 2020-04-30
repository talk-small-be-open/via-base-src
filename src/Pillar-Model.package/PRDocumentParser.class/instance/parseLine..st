parsing
parseLine: aString
	"Parses ==aString==, that represents a single line of input, to a *PRDocumentItem* and add it to the ==items== collection."
	PRMatcherManager default withItemParserForLine: aString do: [ :itemParser | itemParser parse: aString with: self ]