tests
testReorderLike
	| c1 c2 |
	c1 := { 'abc'. 'def'. 'ghi'. 'jkl' } asOrderedCollection.
	c2 := { 'def'. 'abc'. 'ghi'. 'jkl' } asOrderedCollection.
	
	c1 reorderLike: c2.
	
	self assert: (c2 hasEqualElements: { 'def'. 'abc'. 'ghi'. 'jkl' }).
	
	self assert: (c1 hasEqualElements: c2).