as yet unclassified
initialize
	super initialize.
	targetRelativePath := 'uploads'.
	acceptedMimeTypes := OrderedCollection new.
	self clearErrorMessage