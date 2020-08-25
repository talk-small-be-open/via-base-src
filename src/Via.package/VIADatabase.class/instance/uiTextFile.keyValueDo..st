uitext
uiTextFile: aFile keyValueDo: aBlock
	| fileContents stream symbol value language |

	fileContents := (GRCodec forEncoding: 'utf-8') decode: (GRPlatform current contentsOfFile: aFile filePath binary: true).
	stream := fileContents readStream.
	
	[stream atEnd] whileFalse: [
		symbol := (stream upTo: Character tab).
		
		"Check"
		symbol first = $# ifFalse: [self error: 'Wrong translation file format'].
		symbol := symbol allButFirst asSymbol.
		
		value := (stream upTo: Character tab) asString. "Last delimiter is a single tab. So we can deal with multiline text values"
		
		stream skipTo: Character lf.
		
		aBlock value: symbol value: value]