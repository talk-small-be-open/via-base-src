actions
deleteTag: aTag
	(self confirmYesNo: 'Really delete?') ifTrue: [
		self wd removeTag: aTag]