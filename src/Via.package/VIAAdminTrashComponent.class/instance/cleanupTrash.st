as yet unclassified
cleanupTrash
	(self confirm: 'Really DELETE all old objects?') ifTrue: [
		self wd cleanupOldObjectsFromTrash]