parsing
createGlossaryString
	^ String streamContents: [ :s |
		entries do: [ :each |
			s << self entryDelimiter.
			s << each title.
"			s lf."
			each isDescriptionEmpty ifFalse: [
				s lf.
				s << each description pillarString.
			].
		] separatedBy: [ s lf ]
	]