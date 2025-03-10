as yet unclassified
studentsAndMembershipsDo: aBlockTwoArgs
	^ self students do: [ :each |
		aBlockTwoArgs value: each value: (self studentMembershipOf: each) ]