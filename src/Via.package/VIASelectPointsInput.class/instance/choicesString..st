as yet unclassified
choicesString: aString
	| lines |
	lines := aString lines.
	choices := lines collect: [:each | {(each copyUpTo: $:) greaseInteger. each copyAfter: $:}]