finders
findOrCreateUserBySocialId: aString email: anEmailString
	| user |
	 user := self users detect: [:each | (each hasSocialId: aString) or: [each email = anEmailString]] ifNone: [
		| newUser |
		newUser := VIAUser new
			firstName: 'Nofirstname';
			lastName: '';
			yourself.
		self addUser: newUser.
		newUser].
	
	user
		email: anEmailString;
		addSocialId: aString.
	
	^user