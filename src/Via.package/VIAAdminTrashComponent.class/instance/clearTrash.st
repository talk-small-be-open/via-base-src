as yet unclassified
clearTrash
	(self confirm: 'Really delete ALL objects in the trash?') ifTrue: [
		self wd emptyTrash]