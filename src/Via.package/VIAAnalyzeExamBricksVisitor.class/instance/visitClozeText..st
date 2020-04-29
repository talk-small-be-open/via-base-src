as yet unclassified
visitClozeText: aClozeText
	aClozeText placeholders do: [:each |
		each acceptVisitor: self]