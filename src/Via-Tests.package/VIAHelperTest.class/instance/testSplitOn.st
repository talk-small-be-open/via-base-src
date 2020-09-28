tests
testSplitOn
	| result |
	result := VIAHelper split: #(1 2 3 4 1 2 6 1) on: [ :each | each > 3 ].
	
	{ #(1 2 3). #(1 2). #(1) } withIndexDo: [ :each :index |
		self assertCollection: each hasSameElements: (result at: index) ]