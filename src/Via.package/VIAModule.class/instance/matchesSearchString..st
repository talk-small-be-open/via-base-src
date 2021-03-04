as yet unclassified
matchesSearchString: aString
	| found |
	aString ifBlank: [ ^ false ].
	
	found := [ ^ true ].

	(title includesSubstring: aString caseSensitive: false) ifTrue: found.
	(classification matchesSearchString: aString) ifTrue: found.
	(self authorUsers anySatisfy: [:each | each fullName includesSubstring: aString caseSensitive: false]) ifTrue: found.

	aString first isDigit ifTrue: [
		(self matchesIndexCode: aString) ifTrue: found ].
		
	^ false