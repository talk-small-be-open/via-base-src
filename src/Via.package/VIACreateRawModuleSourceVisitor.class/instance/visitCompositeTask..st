as yet unclassified
visitCompositeTask: aCompositeTask
	stream << aCompositeTask title.
	stream lf.
	stream << '====='.
	stream lf.
	
	aCompositeTask children do: [:each |
		each acceptVisitor: self].

