as yet unclassified
paramsToDictionary: aParamsString
	"x/aaa/y/bbb gets to Dictionary {x->aaa y->bbb}"
	| tokens |
	tokens := (aParamsString findTokens: '/') asOrderedCollection.

	"Make it even"
	tokens size odd ifTrue: [tokens add: nil].

	^Dictionary newFromPairs: tokens.