actions
deleteAllInProgress: anExam
	(self confirmYesNo: 'examModuleTeacher:reallyDeleteAllInProgressQM') ifTrue: [
		anExam deleteExercisesInProgress]