initialization
initialize
	super initialize.
	textMarkups := self class textMatcher keys asArray
		sort: [ :a :b | a size > b size ];
		yourself.
	lineMarkups := self class lineMatcher keys asArray
		sort: [ :a :b | a size > b size ];
		yourself.