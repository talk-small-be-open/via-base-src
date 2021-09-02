tests
testStandardizeCharacters
	| in |
	in := '‘`´`‛‘’'.
	self assert: (VIAHelper standardizeCharacters: in) equals: (in collect: [:e | $']).
	
	in := 'abc123'.
	self assert: (VIAHelper standardizeCharacters: in) equals: in.
	
	in := 'abc`123'.
	self assert: (VIAHelper standardizeCharacters: in) equals: 'abc''123'