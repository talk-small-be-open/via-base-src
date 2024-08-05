as yet unclassified
matchesSearchString: aString
	| found |
	aString ifBlank: [ ^ false ].
	
	found := [ ^ true ].

	(VIAHelper matchesSearchString: aString in: title) ifTrue: found.
	(classification matchesSearchString: aString) ifTrue: found.
	(self authorUsers anySatisfy: [:each |
		VIAHelper matchesSearchString: aString in: each fullName ]) ifTrue: found.

"	aString first isDigit ifTrue: ["
	(self matchesIndexCode: aString) ifTrue: found.
		
	^ false