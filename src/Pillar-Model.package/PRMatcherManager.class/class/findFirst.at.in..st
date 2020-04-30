utilities
findFirst: aSearchString at: anInteger in: aString
	"Find the first non-escaped occurence of aSearchString starting at anInteger in aString."

	| index |
	index := aString findString: aSearchString startingAt: anInteger.
	[ anInteger < index and: [ (aString at: index - 1 ifAbsent: nil) = $\ ] ]
		whileTrue: [ index := aString findString: aSearchString startingAt: index + 1 ].
	^ index