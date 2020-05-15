parsing
continueParsingWith: aString
	|  workingString |
	workingString := alreadySeenString, String lf, aString.
	currentStop := PRMatcherManager
		findFirst: (itemParser markupEnd: currentMarkup)
		at: currentStart + currentMarkup size
		in: workingString.
	^ currentStart < currentStop
		ifFalse: [ self handleNoEndMarkupFoundIn: workingString ]
		ifTrue: [ self extractDataFrom: workingString ]