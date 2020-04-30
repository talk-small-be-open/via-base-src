utilities
findPairFirstOf: anArray at: anInteger in: aString
	"Find the first non-escaped occurence of any of the search strings in anArray starting at anInteger in aString. Answer a key/value pair with index/search string or nil if not found."

	| index minIndex minMarkup |
	minIndex := aString size. minMarkup := nil.
	anArray do: [ :each |
		index := self findFirst: each at: anInteger in: aString.
		(0 < index and: [ index < minIndex ])
			ifTrue: [ minIndex := index. minMarkup := each ] ].
	^ minIndex -> minMarkup 