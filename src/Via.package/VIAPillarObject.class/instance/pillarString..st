accessing
pillarString: aString
	| isChanged |
	isChanged := pillarString ~= aString.
	isChanged ifTrue: [
		pillarString := aString.
		self parsePillarString].
