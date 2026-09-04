finders
findUserBySocialId: aString email: anEmailString
	| user |
	
	aString ifBlank: [ self error: 'No, no, no!' ].
	
	user := self
		ifPharo: [
			self users detect: [:each |
				(each hasSocialId: aString) or: [anEmailString notBlank and: [each email = anEmailString]]
			] ifNone: [ nil ]
		]
		ifGemStone: [
			| query |
			query := String streamContents: [ :q |
				q << '(each.socialIds.* = '''.
				q << aString.
				q << ''')'.
				
				anEmailString ifNotBlank: [ 
					q << ' | (each.email = '''.
					q << anEmailString.
					q << ''')'.
				]
			].
"anyIfNone does not work in GS if compound query, maybe bug?			(GsQuery fromString: query on: users) anyIfNone: [ nil ]"
			(GsQuery fromString: query on: users) queryResult anyOneOrNil
		].
		
	^ user