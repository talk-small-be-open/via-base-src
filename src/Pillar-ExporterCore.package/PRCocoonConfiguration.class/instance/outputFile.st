accessing
outputFile
	<cocoonParameter: 'Indicate in which file to export input files. This can also be a write stream.'>
	^ self propertyAt: 'outputFile' default: [ self defaultOutputFile ]