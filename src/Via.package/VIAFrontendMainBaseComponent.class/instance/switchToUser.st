as yet unclassified
switchToUser
	| user text |
	
	text := self request: 'Search user by email'.
	
	text ifBlank: [ ^ self ].
	
	user := self wd findUserByEmail: text.

"	user := self chooseFrom: users sortedBySortKey labels: [:each | each displayName truncate: 50 ] title: 'Choose user'  default: nil."
	
	user
		ifNil: [ self inform: 'User not found' ]
		ifNotNil: [
			self session switchToUser: user.
			self close].