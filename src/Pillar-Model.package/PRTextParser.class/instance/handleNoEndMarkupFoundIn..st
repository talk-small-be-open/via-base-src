parsing
handleNoEndMarkupFoundIn: aString
	"No end markup has been found in aString yet. If there is more to parse in following lines of the stream, try to find the end markup there. Otherwise, the markup we found previously is never ended and we should consider it to be plain text."
	^ stream atEnd
		ifTrue: [ self class parseString: aString ]
		ifFalse: [ 
			alreadySeenString := aString.
			self continueParsingWith: stream nextLine ]