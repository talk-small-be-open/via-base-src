as yet unclassified
canMakeVewVersionModule: aModule
	self ifAdmin: [^true].

	^aModule authorUsers includes: self currentUser