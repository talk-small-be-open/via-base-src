actions
deleteStudent: aStudent inExam: anExam
	(self confirmYesNo: 'examModuleTeacher:reallyDeleteStudentInExamQM') ifTrue: [
		anExam deleteExerciseOfStudent: aStudent]