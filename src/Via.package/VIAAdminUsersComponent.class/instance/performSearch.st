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

		searchSmartFilter = #'last-login-older-180days' ifTrue: [
			| date |
			date := Date today subtractDays: 180. 
			foundUsers := foundUsers select: [ :each | each lastLoginAt notNil and: [ each lastLoginAt < date ] ].
		].

		searchSmartFilter = #'last-login-older-365days' ifTrue: [
			| date |
			date := Date today subtractDays: 365.
			foundUsers := foundUsers select: [ :each | each loginCount > 0 and: [
					"Due to a past bug in 2023, there were timestamps == DateAndTime class. So we count them as very old, too.
					And also if we somehow reset it to nil, then it is also very old (combined with loginCount>0 above) "
					(((each lastLoginAt isKindOf: DateAndTime) not) or: [ each lastLoginAt isNil ]) or: [
						each lastLoginAt < date ].
			] ].
		].

	].

	foundUsers := foundUsers sortedBySortKey.

	self showUsers: foundUsers.