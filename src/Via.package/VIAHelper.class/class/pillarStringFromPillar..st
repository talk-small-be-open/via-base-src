as yet unclassified
pillarStringFromPillar: aPillarDocument
	aPillarDocument ifNil: [ ^ nil ].
	^VIAPrPillarWriter write: aPillarDocument