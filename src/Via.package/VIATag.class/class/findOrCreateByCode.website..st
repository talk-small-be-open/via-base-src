as yet unclassified
findOrCreateByCode: aSymbol website: aWebsite
	| tag |
	tag := aWebsite data findTagByCode: aSymbol class: self.
	
	tag ifNil: [
		tag := self code: aSymbol.
		aWebsite data addTag: tag].

	^tag