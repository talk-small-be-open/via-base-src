finders
findUserGroupsByMember: aUser
	^ userGroups select: [:each | each isMember: aUser]