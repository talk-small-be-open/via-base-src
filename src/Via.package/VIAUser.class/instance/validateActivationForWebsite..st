as yet unclassified
validateActivationForWebsite: aWebsite

	(aWebsite data findUserByEmail: email) ifNotNil: [^false].
	
	^true