as yet unclassified
pendingExams
	^ exams select: [:each | each isUserPending: user]