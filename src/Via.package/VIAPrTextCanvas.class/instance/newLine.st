writing text
newLine
	super newLine.
	lastIsNewLine ifTrue: [ lastIsEmptyLine := true ].
	lastIsNewLine := true