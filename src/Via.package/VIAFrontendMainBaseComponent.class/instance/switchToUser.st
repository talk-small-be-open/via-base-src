as yet unclassified
switchToUser
	| user text users |
	
	text := self request: 'Search user by text'.
	
	text ifBlank: [ ^ self ].
	
	users := self wd findUsersByText: text.

	user := self chooseFrom: users sortedBySortKey labels: [:each | each displayName truncate: 50 ] title: 'Choose user'  default: nil.
	
	user ifNotNil: [
		self session switchToUser: user.
		self close].