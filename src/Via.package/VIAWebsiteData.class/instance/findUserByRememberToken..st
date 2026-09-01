finders
findUserByRememberToken: aString
	^ VIAPlatform
		ifPharo: [
			users detect: [:each | each rememberToken = aString] ifNone: [ nil ] ]
		ifGemStone: [
			(GsQuery fromString: ('each.rememberToken = "', aString, '"') on: users) anyIfNone: [ nil ]
		]