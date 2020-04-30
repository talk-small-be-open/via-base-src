private
parseSeparateInputFiles
	| documents stdin |
	documents := OrderedCollection new.
	stdin := FileStream stdin.
	self inputFiles isEmpty
		ifTrue: [ | input |
			stdin atEnd ifTrue: [ ^ self errorNoInputFile ].
			input := (String streamContents: [ :s |
				[ stdin atEnd ] whileFalse: [ 
					stdin next ifNotNil: [ :char |
					s nextPut: char ] ] ]).
			documents add: (PRDocumentParser parse: input) ]
		ifFalse: [ 
			documents add: (self parseFile: self inputFiles first).
			self inputFiles allButFirst
				do: [ :file | documents add: (self parseFile: file) ] ].
	^ documents