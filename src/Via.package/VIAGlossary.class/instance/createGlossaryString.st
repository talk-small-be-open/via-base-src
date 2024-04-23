parsing
createGlossaryString
	^ String streamContents: [ :s |
		entries do: [ :each |
			s << self entryDelimiter.
			s << each title.
			each isSyntaxEmpty ifFalse: [
				s lf.
				s << each syntax pillarString.
				s lf.
				s << self contentDelimiter.
			].
			each isDescriptionEmpty ifFalse: [
				s lf.
				s << each description pillarString.
			].
		] separatedBy: [ s lf ]
	]