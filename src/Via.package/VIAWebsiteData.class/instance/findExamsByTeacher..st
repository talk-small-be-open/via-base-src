finders
findExamsByTeacher: aUser
	^self exams select: [:each | each teacherUser = aUser]