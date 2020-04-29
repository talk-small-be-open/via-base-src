as yet unclassified
visitCompositeTask: aCompositeTask
	aCompositeTask children do: [:each |
		each acceptVisitor: self].

	^self visitTask: aCompositeTask