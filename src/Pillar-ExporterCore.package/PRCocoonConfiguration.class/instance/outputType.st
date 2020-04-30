accessing
outputType
	<cocoonParameter: 'Indicate the kind of output desired.'>
	^ self propertyAt: 'outputType' default: [ self defaultOutputType ]