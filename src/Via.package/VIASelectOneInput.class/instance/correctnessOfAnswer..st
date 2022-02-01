as yet unclassified
correctnessOfAnswer: aValue

	"Spezialfall leer: Objekt ist VIABlankAnswerItem, falls explizit blank"
"	(aValue = VIABlankAnswerItem default) ifTrue: [
		^ self isBlankIsSolution ifTrue: [ 100 ] ifFalse: [ 0 ] ]."

	^(self solutions includes: aValue)
		ifTrue: [100]
		ifFalse: [0]