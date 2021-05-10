finders
findStudentsGroupsByStudent: aUser
	^ self studentsGroups select: [:each | each isMember: aUser]