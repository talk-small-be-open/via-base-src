as yet unclassified
findOrCreateByCode: aSymbol website: aWebsite
	| tag |
	tag := aWebsite data findTagByCode: aSymbol.
	
	tag ifNil: [
		tag := self code: aSymbol asString.
		aWebsite data addTag: tag].

	^tag