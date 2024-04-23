as yet unclassified
title: aString syntax: aSyntaxPillarString description: aDescriptionPillarString
	
	| instance |
	instance := self title: aString.
		
	aDescriptionPillarString ifNotBlank: [
		instance description pillarString: aDescriptionPillarString ].

	aSyntaxPillarString ifNotBlank: [
		instance syntax pillarString: aSyntaxPillarString ].
		
	^ instance