as yet unclassified
initialize
	super initialize.
	targetBasePath := self db propertyAt: #tmpPath default: ['/tmp'].
	targetRelativePath := 'uploads'.
	acceptedMimeTypes := OrderedCollection new.
	self clearErrorMessage