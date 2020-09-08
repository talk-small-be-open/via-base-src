accessing
propertyAt: aSymbol ifBlankPut: aValueBlock
	| value |
	value := (self propertyAt: aSymbol) ifBlank: [
		self propertyAt: aSymbol put: aValueBlock value ].
	
	^ value