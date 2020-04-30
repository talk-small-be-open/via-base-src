writing
writeCounterForHeader: aHeader
	| headerConf |
	headerConf := self configuration levelConfigurationFor: aHeader.
	(headerConf numbering and: [ aHeader counter isValidCounter ])
		ifTrue: [ 
			canvas nextPutAll: (headerConf printCounter: aHeader counter elements).
			headerConf size > 0
				ifTrue: [ self writeCounterDefinitionSeparator ] ]