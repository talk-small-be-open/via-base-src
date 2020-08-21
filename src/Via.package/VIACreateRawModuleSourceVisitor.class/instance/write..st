writing
write: aString
	isAtLineStart ifTrue: [
		indentation timesRepeat: [ stream space; space. ]].
	stream << aString.
	isAtLineStart := false.