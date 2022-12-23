as yet unclassified
captureErrorFor: aBrick during: aBlock
	aBlock on: Error do: [ :e | self add: aBrick warning: ('Fehler beim Health-Check: ', e messageText) ]