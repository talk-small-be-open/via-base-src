finders
findOrCreateUserBySocialId: aString email: anEmailString
	| user |
	
	aString ifBlank: [ self error: 'No, no, no!' ].
	
	user := self users detect: [:each |
		(each hasSocialId: aString) or: [anEmailString notBlank and: [each email = anEmailString]]]
	ifNone: [
		| newUser |
		newUser := VIAUser new
			firstName: 'Nofirstname';
			lastName: 'Nolastname';
			yourself.
		self addUser: newUser.
		newUser].
	
	anEmailString ifNotBlank: [ user email: anEmailString ].
	
	user addSocialId: aString.
	
	^user