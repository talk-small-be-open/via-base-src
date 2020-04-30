private
asFile: aFile
	"I check if a File is a File or a File name and I return a good file."

	^ aFile class = FileReference
		ifTrue: [ aFile ]
		ifFalse: [ 
			| file |
			file := self baseDirectory / aFile.
			file exists
				ifTrue: [ file ]
				ifFalse: [ PRConfigurationError signal: aFile , ' is not a valid file name into ' , self baseDirectory asString , '.' ] ]