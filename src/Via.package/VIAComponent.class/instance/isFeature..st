as yet unclassified
isFeature: aSymbol
	^ (self wd propertyAt: (#feature:, aSymbol) ifAbsentPut: [ true ]) = true