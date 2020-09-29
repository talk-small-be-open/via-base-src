testing
isFeature: aSymbol
	^ (self propertyAt: (#feature:, aSymbol) ifAbsentPut: [ true ]) = true