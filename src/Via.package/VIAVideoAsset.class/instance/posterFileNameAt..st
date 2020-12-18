as yet unclassified
posterFileNameAt: anIntegerMs
	| position |
	
	"Robustness"
	self fileReference fileName ifBlank: [^''].

	position := anIntegerMs <= 0
		ifTrue: [ '' ]
		ifFalse: [ '_at', anIntegerMs asString ].

	^self fileReference fileName, position, '.jpg'