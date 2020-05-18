as yet unclassified
pillarFromPillarString: aPillarString
	aPillarString ifNil: [ ^ nil ].
	^VIAPrDocumentParser parse: aPillarString.