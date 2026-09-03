actions
performSearch
	| foundUsers |

	"Abfragen, die eine eigene Basiskollektion liefern zuerst:"
	"1. Präzedenz"
	searchSmartFilter ifNotBlank: [
		(searchSmartFilter beginsWith: #'last-exercise-activity-older-') ifTrue: [
			| datetime days |

			"Wäre Konflikt"
			searchString := nil.

			days := 1.
			searchSmartFilter = #'last-exercise-activity-older-180days' ifTrue: [ days := 180 ].
			searchSmartFilter = #'last-exercise-activity-older-365days' ifTrue: [ days := 365 ].
			
			datetime := (Date today subtractDays: days) asDateAndTime.

			foundUsers := VIAPlatform ifPharo: [
				self wd users select: [ :each | each lastExerciseActivityAt ifNil: [ false ] ifNotNil: [ :at | at < datetime ] ]
			] ifGemStone: [
				| query |
				query := (GsQuery fromString: 'each.cachedLastExerciseActivityAt < datetime')
					bind: 'datetime' to: datetime;
					yourself.
					
				self wd findUsersByGsQuery: query.
			]
		].
	].

	"2. Präzedenz"
	(foundUsers isNil and: [ searchString notBlank ]) ifTrue: [
		foundUsers := self wd findUsersByText: searchString ].


	"Letzte Präzedenz"
	"Standard Basiskollektion holen, falls noch nichts vordefiniert"
	foundUsers ifNil: [
		foundUsers := self wd users.
	].

	searchRoles ifNotEmpty: [ 
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

		searchSmartFilter = #'login-count-below-10' ifTrue: [
			foundUsers := foundUsers select: [ :each | each loginCount < 10 ].
		].

		searchSmartFilter = #'login-count-above-100' ifTrue: [
			foundUsers := foundUsers select: [ :each | each loginCount > 100 ].
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

	(foundUsers size < 1000) ifTrue: [
		foundUsers := foundUsers sortedBySortKey ].

	self showUsers: foundUsers.