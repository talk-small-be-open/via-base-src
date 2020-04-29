as yet unclassified
propertyAt: aSymbol of: anObject
	| dict |
	dict := self propertiesOf: anObject.
	^dict at: aSymbol asSymbol ifAbsent: [nil].