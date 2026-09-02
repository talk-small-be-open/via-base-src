finders
findUsersByAnyRole: aCollectionOfRoles
	"OPTIMIZE: Use GsQuery, if this is used often"
	
	^self users select: [:each | each hasAnyRole: aCollectionOfRoles ]