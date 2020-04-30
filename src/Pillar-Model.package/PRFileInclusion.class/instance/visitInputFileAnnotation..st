visiting-document
visitInputFileAnnotation: anInputFileAnnotation
	"I load the file and if the file exist I replace the node of the annotation by the content of the file."

	| file |
	file := anInputFileAnnotation fileWithConfiguration: self configuration.
	file exists
		ifTrue: [ 
			| parsedFile |
			parsedFile := anInputFileAnnotation parseFile: file withConfiguration: self configuration.
			self replace: parsedFile children]
		ifFalse: [ anInputFileAnnotation errorFileNotFound: file ]