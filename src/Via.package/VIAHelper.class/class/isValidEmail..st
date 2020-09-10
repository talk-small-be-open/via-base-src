testing
isValidEmail: aString
	^ aString matchesRegex: self regexpEmail