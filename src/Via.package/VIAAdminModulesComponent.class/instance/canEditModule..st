as yet unclassified
canEditModule: aModule
	self ifAdmin: [^true].

	^aModule isDraft and: [(aModule authorUsers includes: self currentUser) or: [
		aModule coAuthorUsers includes: self currentUser
	]]