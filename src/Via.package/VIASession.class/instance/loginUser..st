as yet unclassified
loginUser: aUser
	"Security"
	aUser ifNil: [ self error: 'User can not be nil' ].
	
	user := aUser.