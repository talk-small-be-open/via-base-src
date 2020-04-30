accessing
separateOutputFiles
	<cocoonParameter: 'Indicate whether each input file must be exported separately or not.'>
	^ self propertyAt: 'separateOutputFiles' default: [ self defaultSeparateOutputFiles ]