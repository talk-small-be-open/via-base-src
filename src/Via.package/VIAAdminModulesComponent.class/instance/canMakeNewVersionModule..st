as yet unclassified
canMakeNewVersionModule: aModule
	self ifAdmin: [^true].

	^aModule authorUsers includes: self currentUser