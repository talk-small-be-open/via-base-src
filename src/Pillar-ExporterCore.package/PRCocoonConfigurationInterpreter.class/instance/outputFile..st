private-interpreting
outputFile: aString
	| file |
	
	aString isEmptyOrNil ifTrue: [ configuration error: 'Please specify an output file' ].
	
	file := self resolvePath: aString.
	
	file isDirectory ifTrue: [ configuration error: 'Invalid output file ' , file pathString ].
	
	^ file