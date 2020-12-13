finders
findUsersByAnyRole: aCollectionOfRoles
	^self users select: [:each | each hasAnyRole: aCollectionOfRoles ]