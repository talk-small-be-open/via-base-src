private
parseDocuments
	^ self separateOutputFiles
		ifTrue: [ self parseSeparateInputFiles ]
		ifFalse: [ self parseAllInputFiles ]