finders
findStudentsGroupsByTeacher: aUser
	^ self studentsGroups select: [:each | each hasTeacher: aUser]