as yet unclassified
choicesString: aString
	| lines |
	lines := aString lines.
	solutions := lines select: [:each | each beginsWith: '*'] thenCollect: [:each | each allButFirst].
	choices := lines collect: [:each | each trimLeft: [:char | char = $* ]]