as yet unclassified
correctnessOfAnswer: aValue
 	| lowercased |

	"Spezialfall leer: Objekt wäre VIABlankAnswerItem, falls explizit blank"	
	((aValue = VIABlankAnswerItem default) and: [ self isBlankIsSolution ]) ifTrue: [ ^ 100 ].
	
	lowercased := aValue ifNotNil: [:v | v asLowercase].
	
	^(self solutions anySatisfy: [:each | each asLowercase = lowercased])
		ifTrue: [100] ifFalse: [0]