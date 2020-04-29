accessing
examsOfTeacher: aUser
	^self exams select: [:each | each teacherUser = aUser]