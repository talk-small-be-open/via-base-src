finders
findOrCreateUserBySocialId: aString email: anEmailString
	| user newUser |
	
	user := (self findUserBySocialId: aString email: anEmailString) ifNil: [
		newUser := VIAUser new.
		newUser
	].
	
	"Set email. Initial value or update. Update could be the case, if the user
	was found via the social ID, but was using a new email address, other than
	at registration time"
	anEmailString ifNotBlank: [
		"No same value overwrite. Optimized for GemStone indexes"
		anEmailString ~= user email ifTrue: [
			user email: anEmailString ]
	].
	
	user addSocialId: aString.

	"If new user: Add the new user at the end, because GemStone indexes will need the correct initial data."
	newUser ifNotNil: [
		self addUser: newUser ].
	
	^ user