as yet unclassified
directLoginUser: aUser
	"We log the user in, if he isnt already"
	(self currentUser == aUser) ifFalse: [
		self session loginUser: aUser]