removing
removeUser: aUser
	super removeUser: aUser.
	
	studentMemberships removeKey: aUser ifAbsent: [  ]