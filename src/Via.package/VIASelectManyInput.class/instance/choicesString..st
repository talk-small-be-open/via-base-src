as yet unclassified
choicesString: aString
	| tuple |
"	| lines |
	lines := aString lines.
	solutions := lines select: [:each | each beginsWith: '*'] thenCollect: [:each | each allButFirst].
	choices := lines collect: [:each | each trimLeft: [:char | char = $* ]]"
	tuple := self class parseChoicesString: aString.
	
	solutions := tuple first.
	choices := tuple second.
	choicesGroups := tuple third.