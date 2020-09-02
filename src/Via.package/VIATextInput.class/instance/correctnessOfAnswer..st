as yet unclassified
correctnessOfAnswer: aValue
 	| lowercased |

	"Spezialfall leer: Objekt ist VIABlankAnswerItem, falls explizit blank"	
	(aValue = VIABlankAnswerItem default) ifTrue: [
		^ self isBlankIsSolution ifTrue: [ 100 ] ifFalse: [ 0 ] ].
	
	lowercased := aValue ifNotNil: [:v | v asLowercase].
	
	^(self solutions anySatisfy: [:each | each asLowercase = lowercased])
		ifTrue: [100] ifFalse: [0]