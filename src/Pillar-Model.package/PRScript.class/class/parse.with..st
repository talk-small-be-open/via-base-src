instance creation
parse: aString with: aParser
	| stream configuration content endOfContentIndex |
	stream := aString readStream.
	stream skip: self markupBegin size.
	configuration := stream nextLine.
	stream atEnd
		ifTrue: [ 
			"We are *not* in a script after all (because the markupEnd should be on its own line."
			^ (PRTextParser parseString: aString) first ].
	endOfContentIndex := aString size - self markupEnd size.
	content := stream next: endOfContentIndex - stream position.
	^ self content: content parameters: (self parseParameters: configuration)