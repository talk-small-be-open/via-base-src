as yet unclassified
changeDeviceWindowSize: aString
	| pixels |
	pixels := aString asInteger.
	
	self session viewportWidth: pixels