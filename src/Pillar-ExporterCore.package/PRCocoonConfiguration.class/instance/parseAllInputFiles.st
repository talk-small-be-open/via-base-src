private
parseAllInputFiles
	| document stdin |
	stdin := FileStream stdin.
	self inputFiles isEmpty
		ifTrue: [ | input |
			stdin atEnd ifTrue: [ ^ self errorNoInputFile ].
			input := (String streamContents: [ :s |
				[ stdin atEnd ] whileFalse: [ 
					stdin next ifNotNil: [ :char |
					s nextPut: char ] ] ]).
			document := PRDocumentParser parse: input ]
		ifFalse: [ 
			document := self parseFile: self inputFiles first.
			self inputFiles allButFirst
				do: [ :file | document addAll: (self parseFile: file) children ] ].
	^ OrderedCollection with: document