as yet unclassified
correctnessOfAnswer: aValue

	aValue ifNil: [ ^ 0 ].

	strict
		ifTrue: [
			(self normalize: aValue) = (self normalize: text) ifTrue: [ ^ 100 ]
		]
		ifFalse: [aValue ifNotBlank: [ ^ 100 ]].
	
	^ 0