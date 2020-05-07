as yet unclassified
pillarString: aString
	| isChanged |
	isChanged := pillarString ~= aString.
	pillarString := aString.
	isChanged ifTrue: [self parsePillarString].