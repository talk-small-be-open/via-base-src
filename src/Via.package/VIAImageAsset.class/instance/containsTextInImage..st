accessing
containsTextInImage: anObject
	"on change we need to delete all"
	containsTextInImage ~= anObject ifTrue: [ self deleteTransformedMediaFiles ].

	containsTextInImage := anObject