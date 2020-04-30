private
writeAll: documents using: aWriter
	| cpt nextDocument |
	"This nextDocument variable is used to link documents from one another. Because of this, templates can show a 'next' link to go to the following document in the sequence."
	nextDocument := nil.
	cpt := self inputFiles size. 
	documents
		reverseDo: [ :document | 
			| file | 
			file := self inputFiles at: cpt.
			document next ifNil: [ document next: nextDocument ].
			nextDocument := document.
			self
				outputFile:
					(self baseDirectory resolve: file path parent) / (file basenameWithoutExtension , '.' , aWriter fileExtension).
			cpt := cpt - 1.
			[ self write: document using: aWriter ]
				on: PRExportError
				do: [ :err | 
					err
						inputFile: file;
						signal ] ]