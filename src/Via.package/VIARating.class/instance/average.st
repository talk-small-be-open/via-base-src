as yet unclassified
average
	| numbers |
	numbers := self ratingNumbers.

	numbers ifEmpty: [^0].
	
	^numbers average