accessing
outputDirectory: aDirectory

	| file |
	file := aDirectory asFileReference.
	file exists ifFalse: [ file ensureDirectory ].
	self propertyAt: 'outputDirectory' put: file