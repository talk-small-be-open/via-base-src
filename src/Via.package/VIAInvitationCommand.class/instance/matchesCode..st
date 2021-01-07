testing
matchesCode: aString
	| correctedCode |
	"Full equal"
	invitationCode = aString ifTrue: [ ^ true ].
	
	"We accept some typing lazyness"
	aString size = 6 ifTrue: [
		correctedCode := (aString first: 3), '-', (aString copyFrom: 4 to: 6).
		invitationCode = correctedCode ifTrue: [ ^ true ].
	].

	^ false