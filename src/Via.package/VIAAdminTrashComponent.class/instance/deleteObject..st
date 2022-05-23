as yet unclassified
deleteObject: aModel
	(self confirm: 'Really delete object?') ifTrue: [
		self wd deleteFromTrash: aModel]