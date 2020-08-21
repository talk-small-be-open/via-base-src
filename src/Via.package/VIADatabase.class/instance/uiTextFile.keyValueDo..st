enumerating
uiTextFile: aFile keyValueDo: aBlock
	| fileContents fileStream |
	self isTranslationFilePresent ifTrue: [
		| symbol value language |
		fileContents := (GRCodec forEncoding: 'utf-8') decode: (GRPlatform current contentsOfFile: self translationFileName binary: true).
		fileStream := fileContents readStream.
		
		[fileStream atEnd] whileFalse: [
	"		lineStream := line readStream."
			symbol := (fileStream upTo: Character tab).
			
			"Check"
			symbol first = $# ifFalse: [self error: 'Wrong translation file format'].
			symbol := symbol allButFirst asSymbol.
			
			language := (fileStream upTo: Character tab) asSymbol.
			value := (fileStream upTo: Character tab) asString. "Last delimiter is a single tab. So we can deal with multiline text values"
			
			fileStream skipTo: Character lf.
			
			aBlock value: symbol value: value value: language]]