actions
deleteTestingUsers
	| usersToDelete |
	usersToDelete := self wd users select: [ :each | each email endsWith: self testUserDomain ].
	
	usersToDelete do: [ :each | each deleteOnWebsite: self website ].
	
	self clear.
	
	self flashMessage: 'All test users deleted'
