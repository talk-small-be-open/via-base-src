accessing
verbose
	<cocoonParameter: 'Indicate whether Pillar should write a verbose log when exporting.'>
	^ self propertyAt: 'verbose' default: [ self defaultVerbose ]