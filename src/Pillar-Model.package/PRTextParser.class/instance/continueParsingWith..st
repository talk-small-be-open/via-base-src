parsing
continueParsingWith: aString
	|  workingString |
	workingString := alreadySeenString , Smalltalk os pillarLineEnding , aString.
	currentStop := PRMatcherManager
		findFirst: (itemParser markupEnd: currentMarkup)
		at: currentStart + currentMarkup size
		in: workingString.
	^ currentStart < currentStop
		ifFalse: [ self handleNoEndMarkupFoundIn: workingString ]
		ifTrue: [ self extractDataFrom: workingString ]