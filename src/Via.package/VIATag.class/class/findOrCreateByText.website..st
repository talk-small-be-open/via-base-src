as yet unclassified
findOrCreateByText: aString website: aWebsite
	| tag |
	tag := aWebsite data findTagByText: aString.
	
	tag ifNil: [
		tag := self text: aString.
		aWebsite data addTag: tag].

	^tag