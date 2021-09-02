as yet unclassified
correctnessOfAnswer: aValue
 	| simplifiedAnswer simplifier |

	"Spezialfall leer: Objekt ist VIABlankAnswerItem, falls explizit blank"	
	(aValue = VIABlankAnswerItem default) ifTrue: [
		^ self isBlankIsSolution ifTrue: [ 100 ] ifFalse: [ 0 ] ].

	simplifier := [ :in | VIAHelper standardizeCharacters: in asLowercase ].
	
	simplifiedAnswer := aValue ifNotNil: [:v | simplifier value: v ].

	^(self solutions anySatisfy: [:each | (simplifier value: each) = simplifiedAnswer])
		ifTrue: [100] ifFalse: [0]