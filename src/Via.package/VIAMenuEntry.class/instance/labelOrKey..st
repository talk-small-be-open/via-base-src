as yet unclassified
labelOrKey: aString

	label := aString isTranslationKey
		ifTrue: [ aString t ]
		ifFalse: [ aString ]