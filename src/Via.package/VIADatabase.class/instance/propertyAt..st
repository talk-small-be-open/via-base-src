accessing
propertyAt: aSymbol
	^self propertyAt: aSymbol ifAbsentPut: [ nil ]