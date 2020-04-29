accessing
examsOfStudent: aUser
	^self exams select: [:each | each hasUserSubmitted: aUser]