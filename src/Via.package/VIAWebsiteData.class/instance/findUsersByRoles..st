finders
findUsersByRoles: aCollectionOfRoles
	aCollectionOfRoles ifBlank: [ ^ #() ].
	
	^ self ifPharo: [ 
		self users select: [:each | each hasRoles: aCollectionOfRoles ].
	] ifGemStone: [
		| queryString |
		
		queryString := String streamContents: [ :s |
			aCollectionOfRoles do: [ :each |
				s << '(each.roles.* == #'.
				s << each.
				s << ')' ] separatedBy: [ s << ' & ' ]
		].
		
		self findUsersByGsQueryString: queryString.
	]
	
