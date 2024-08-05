as yet unclassified
document: aPillarDocument matchesSearchString: aString
	searchString := aString.
	onFound := [ ^ true ].
	
	searchString ifBlank: [ ^ false ].
	aPillarDocument ifNil: [ ^ false ].

	self start: aPillarDocument.

	^ false