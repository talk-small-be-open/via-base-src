as yet unclassified
withPrDocument: aPillarDocument do: aBlock
	aPillarDocument ifBlank: [ ^ self ].
	
	block := aBlock.
	self start: aPillarDocument.