as yet unclassified
createNewDraftVersion
	| newVersion |
	newVersion := self newestReleasedVersion copy.
	newVersion beDraft.
	
	self wd addModule: newVersion.
	self addVersion: newVersion.
	
	^newVersion