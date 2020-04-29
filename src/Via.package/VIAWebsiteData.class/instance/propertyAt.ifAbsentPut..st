accessing
propertyAt: aSymbol ifAbsentPut: aValue
	^properties at: aSymbol asSymbol ifAbsentPut: aValue