accessing
propertyAt: aSymbol
	^properties at: aSymbol asSymbol ifAbsentPut: [nil]