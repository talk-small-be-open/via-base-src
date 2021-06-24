as yet unclassified
restoreObject: anObject
	(self confirm: 'Really restore?') ifTrue: [
		self wd restoreFromTrash: anObject.
		self flashMessage: ('"', anObject displayName, '" restored').
	]