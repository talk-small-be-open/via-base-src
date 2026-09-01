finders
findUserBySocialId: aString email: anEmailString
	| user |
	
	aString ifBlank: [ self error: 'No, no, no!' ].
	
	user := VIAPlatform
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
			(GsQuery fromString: query on: users) anyIfNone: [ nil ]
		].
		
	^ user