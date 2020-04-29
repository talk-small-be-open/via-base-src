accessing
pillarString: aString
	aString ~= pillarString ifTrue: [
		pillarString := aString. "Failsafe save"
		self parsePillarString.
	]