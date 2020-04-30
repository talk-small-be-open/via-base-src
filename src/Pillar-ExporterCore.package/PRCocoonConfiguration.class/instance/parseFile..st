private
parseFile: aFile
	^ aFile
		readStreamDo: [ :input | 
			| input2 |
			"The following are here because of case #12259: 'FileSystem memory reads/writes using a binary stream by default'."
			input2 := input.
			(aFile fileSystem store isKindOf: MemoryStore)
				ifTrue: [ input2 := input2 contents asString readStream ].
			[ self transform: (PRDocumentParser parse: input2) ]
				on: PRError
				do: [ :exception | PRError signal: exception messageText , ' Inside: ' , aFile basename ] ]