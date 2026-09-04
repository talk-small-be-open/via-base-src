finders
findUsersByExactRoles: aCollectionOfRoles
	aCollectionOfRoles ifBlank: [ ^ #() ].
	
	^ self ifPharo: [ 
		self users select: [:each | each hasExactRoles: aCollectionOfRoles ].
	] ifGemStone: [
		| query |
		
		query := (GsQuery fromString: 'each.roles = roleCollection')
			bind: 'roleCollection' to: (aCollectionOfRoles asSet);
			yourself.
		
		self findUsersByGsQuery: query.
		
	]
	
