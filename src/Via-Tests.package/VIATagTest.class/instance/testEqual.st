tests
testEqual
	| a a2 b |
	a := VIATag new
		text: 'Tag A';
		code: 'a';
		yourself.

	a2 := VIATag new
		text: 'Tag A und leicht anders';
		code: 'a';
		yourself.
		
	b := VIATag new
		text: 'Tag B';
		code: 'b';
		yourself.

	self assert: a equals: a2.		
	self deny: a equals: b