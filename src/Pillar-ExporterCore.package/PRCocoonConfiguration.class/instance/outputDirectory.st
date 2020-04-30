accessing
outputDirectory

	^ self propertyAt: 'outputDirectory' default: [ self baseDirectory ]