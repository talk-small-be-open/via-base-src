actions
performSearch
	| foundUsers |
	
	foundUsers := (searchString
		ifBlank: [self wd users]
		ifNotBlank: [self wd findUsersByText: searchString ]).

	searchRoles ifNotBlank: [
		searchRolesMatchAll ifTrue: [
			foundUsers := foundUsers select: [ :each | each hasRoles: searchRoles ]
		] ifFalse: [ 
			foundUsers := foundUsers select: [ :each | each hasAnyRole: searchRoles ]
		]
	].

	searchSmartFilter ifNotBlank: [
		searchSmartFilter = #'no-social-id' ifTrue: [
			foundUsers := foundUsers select: [ :each | each hasSocialId not ].
		].

		searchSmartFilter = #'invalid-external-user' ifTrue: [
			foundUsers := foundUsers select: [ :each |
				| externalUser |
				externalUser := (self am externalAuthUserClass tryNewFromUser: each).
				externalUser notNil and: [ externalUser checkExist not ]
			]
		].

		searchSmartFilter = #'never-logged-in' ifTrue: [
			foundUsers := foundUsers select: [ :each | each loginCount = 0 ].
		].

	].

	foundUsers := foundUsers sortedBySortKey.

	self showUsers: foundUsers.