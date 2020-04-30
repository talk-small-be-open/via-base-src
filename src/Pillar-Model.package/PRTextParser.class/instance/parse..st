parsing
parse: aString
	| workingString |
	workingString := aString.
	currentMarkup := PRMatcherManager default markupForFirstItemParserIn: workingString.
	currentMarkup isNil
		ifTrue: [ ^ PRTextParser parseString: aString ].
	itemParser := PRMatcherManager default itemParserForTextMarkup: currentMarkup.
	currentStart := PRMatcherManager findFirstMarkup: currentMarkup in: workingString.
	currentStop := PRMatcherManager 
		findFirst: (itemParser markupEnd: currentMarkup)
		at: currentStart + currentMarkup size
		in: workingString.
	^ currentStart < currentStop
		ifFalse: [ self handleNoEndMarkupFoundIn: workingString ]
		ifTrue: [ self extractDataFrom: workingString ]