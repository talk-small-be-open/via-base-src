actions
performSearch
	| foundUsers thisFilterUsers |

	foundUsers := nil. " muss initial nil sein, wegen Filter-Hilfsmethode unten.    IdentitySet new."

	"Abfragen, die eine eigene Basiskollektion liefern zuerst:"
	"1. Präzedenz"
	searchSmartFilter ifNotBlank: [

		"Letzte Aktivität"
		(searchSmartFilter beginsWith: #'last-exercise-activity-older-') ifTrue: [
			| datetime days |

			days := 1.
			searchSmartFilter = #'last-exercise-activity-older-180days' ifTrue: [ days := 180 ].
			searchSmartFilter = #'last-exercise-activity-older-365days' ifTrue: [ days := 365 ].
			
			datetime := (Date today subtractDays: days) asDateAndTime.

			thisFilterUsers := VIAPlatform ifPharo: [
				self wd users select: [ :each | each lastExerciseActivityAt ifNil: [ false ] ifNotNil: [ :at | at < datetime ] ]
			] ifGemStone: [
				| query |
				query := (GsQuery fromString: 'each.cachedLastExerciseActivityAt < datetime')
					bind: 'datetime' to: datetime;
					yourself.
					
				self wd findUsersByGsQuery: query.
			].
		
"Korrekt aber überflüssig			foundUsers := VIAHelper filterCollectionA: thisFilterUsers  withB: foundUsers"
			foundUsers := thisFilterUsers asIdentitySet.
		].
	

		"Letztes Login"
		(searchSmartFilter beginsWith: #'last-login-older-') ifTrue: [
			| datetime days |

			days := 1.
			searchSmartFilter = #'last-login-older-180days' ifTrue: [ days := 180 ].
			searchSmartFilter = #'last-login-older-365days' ifTrue: [ days := 365 ].

			datetime := (Date today subtractDays: days) asDateAndTime.

			thisFilterUsers := VIAPlatform ifPharo: [
				self wd users select: [ :each | each lastLoginAt notNil and: [ each lastLoginAt < datetime ] ]
			] ifGemStone: [
				| query |
				query := (GsQuery fromString: 'each.lastLoginAt < datetime')
					bind: 'datetime' to: datetime;
					yourself.
					
				self wd findUsersByGsQuery: query.
			].
		
			foundUsers := thisFilterUsers asIdentitySet.
		].
	
	
		"Keine Social-ID"
		searchSmartFilter = #'no-social-id' ifTrue: [
			thisFilterUsers := VIAPlatform ifPharo: [
				self wd users reject: [ :each | each hasSocialId ]
			] ifGemStone: [
				| query |
				query := (GsQuery fromString: 'each.socialIds = emptyset')
					bind: 'emptyset' to: Set new;
					yourself.
					
				self wd findUsersByGsQuery: query.
			].
		
			foundUsers := thisFilterUsers asIdentitySet.

		].
		

	].


	"Optimized for using GemStone indexes"
	"2. Präzendenz"
	searchRoles ifNotEmpty: [
		searchRolesMatchExact ifTrue: [
			searchRoles addIfNotPresent: #user.
"			foundUsers := foundUsers select: [ :each | each hasExactRoles: searchRoles ]."
"			foundUsers := foundUsers intersection: (self wd findUsersByExactRoles: searchRoles)."
			foundUsers := VIAHelper filterCollectionA: foundUsers withB: (self wd findUsersByExactRoles: searchRoles).
		] ifFalse: [
			searchRoles ~= defaultRoles ifTrue: [
				searchRolesMatchAll ifTrue: [
"					foundUsers := foundUsers select: [ :each | each hasRoles: searchRoles ]."
"					foundUsers := foundUsers intersection: (self wd findUsersByRoles: searchRoles)."
					foundUsers := VIAHelper filterCollectionA: foundUsers withB: (self wd findUsersByRoles: searchRoles).
				] ifFalse: [ 
"					foundUsers := foundUsers select: [ :each | each hasAnyRole: searchRoles ]."
"					foundUsers := foundUsers intersection: (self wd findUsersByAnyRole: searchRoles)."
					foundUsers := VIAHelper filterCollectionA: foundUsers withB: (self wd findUsersByAnyRole: searchRoles).
				]
			]
		].
	].



	"Letzte Präzedenz"
	"Standard Basiskollektion holen, falls noch nichts vordefiniert"
	foundUsers ifNil: [
		foundUsers := self wd users.
	].

"	searchRoles ifNotEmpty: [ 
		searchRolesMatchExact ifTrue: [
			searchRoles addIfNotPresent: #user.
			foundUsers := foundUsers select: [ :each | each hasExactRoles: searchRoles ]
		] ifFalse: [
			searchRoles ~= defaultRoles ifTrue: [
				searchRolesMatchAll ifTrue: [
					foundUsers := foundUsers select: [ :each | each hasRoles: searchRoles ]
				] ifFalse: [ 
					foundUsers := foundUsers select: [ :each | each hasAnyRole: searchRoles ]
				]
			]
		].
	]."

	searchSmartFilter ifNotBlank: [
"		searchSmartFilter = #'no-social-id' ifTrue: [
			foundUsers := foundUsers select: [ :each | each hasSocialId not ].
		]."

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

		searchSmartFilter = #'login-count-below-10' ifTrue: [
			foundUsers := foundUsers select: [ :each | each loginCount < 10 ].
		].

		searchSmartFilter = #'login-count-above-100' ifTrue: [
			foundUsers := foundUsers select: [ :each | each loginCount > 100 ].
		].
	
	

"		searchSmartFilter = #'last-login-older-180days' ifTrue: [
			| date |
			date := Date today subtractDays: 180. 
			foundUsers := foundUsers select: [ :each | each lastLoginAt notNil and: [ each lastLoginAt < date ] ].
		]."

"		searchSmartFilter = #'last-login-older-365days' ifTrue: [
			| date |
			date := Date today subtractDays: 365.
			foundUsers := foundUsers select: [ :each | each loginCount > 0 and: [
					""Due to a past bug in 2023, there were timestamps == DateAndTime class. So we count them as very old, too.
					And also if we somehow reset it to nil, then it is also very old (combined with loginCount>0 above) ""
					(((each lastLoginAt isKindOf: DateAndTime) not) or: [ each lastLoginAt isNil ]) or: [
						each lastLoginAt < date ].
			] ].
		]."
	].

	searchString notBlank ifTrue: [
"		foundUsers := self wd findUsersByText: searchString"
		foundUsers := foundUsers select: [:each | each matchesSearchString: searchString ]
	].


	(foundUsers size < self lotsOfUsersCount) ifTrue: [
		foundUsers := foundUsers sortedBySortKey ].

	self showUsers: foundUsers.