private-interpreting
outputType: aString

	^ PRDocumentWriter allSubclasses detect: [ :klass | klass isAbstract not and: [ klass writerName asString = aString ] ]