as yet unclassified
ifFeature: aSymbol then: aBlock
	| isOn |
	isOn := self isFeature: aSymbol.
	^ isOn ifTrue: aBlock