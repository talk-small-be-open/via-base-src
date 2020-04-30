accessing
inputFiles
	<cocoonParameter:
		'List the Pillar files that must be exported (can be a FileReference, a relative path from baseDirectory or an absolute path).'>
	^ self convertInputFiles: (self propertyAt: 'inputFiles' default: [ self defaultInputFiles ])