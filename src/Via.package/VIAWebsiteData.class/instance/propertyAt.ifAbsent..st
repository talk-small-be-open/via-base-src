accessing
propertyAt: aSymbol ifAbsent: aBlock
	^properties at: aSymbol asSymbol ifAbsent: aBlock