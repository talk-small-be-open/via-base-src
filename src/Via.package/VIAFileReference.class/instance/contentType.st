accessing
contentType
	contentType ifNil: [self readContentType].
	^contentType