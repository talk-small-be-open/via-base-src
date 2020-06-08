actions
deleteTag: aTag
	(self confirmYesNo: 'admin:reallyDeleteQM') ifTrue: [
		self wd removeTag: aTag]