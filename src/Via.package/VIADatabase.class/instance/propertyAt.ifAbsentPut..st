accessing
propertyAt: aSymbol ifAbsentPut: aBlock
	^properties at: aSymbol asSymbol ifAbsentPut: aBlock