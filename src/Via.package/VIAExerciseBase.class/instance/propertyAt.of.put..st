as yet unclassified
propertyAt: aSymbol of: anObject put: aValue
	| dict |
	dict := self propertiesOf: anObject.
	dict at: aSymbol put: aValue