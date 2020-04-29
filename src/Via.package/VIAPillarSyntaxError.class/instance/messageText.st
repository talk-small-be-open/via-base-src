as yet unclassified
messageText
	^String streamContents: [:s |
		s << 'Pillar syntax error "'.
		s << syntaxError.
		s << '" at line number '.
		s << lineNumber asString.
		s << '. ('.
		s << lineString.
		s << ')'
	]