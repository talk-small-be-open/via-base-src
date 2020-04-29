as yet unclassified
labelForOption: anObject
	"Smart choose the standard option for an object"
	labelBlock ifNotNil: [^labelBlock value: anObject].
	
"	(anObject isKindOf: VIAModelObject)
		ifTrue: [^anObject displayName]."

	(anObject respondsTo: #displayName)
		ifTrue: [^anObject displayName].
	
	^anObject greaseString