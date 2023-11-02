as yet unclassified
glossaryString
	
	^ cachedGlossaryString ifNil: [ cachedGlossaryString := glossary createGlossaryString ]