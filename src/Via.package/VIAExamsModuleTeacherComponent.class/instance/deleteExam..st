actions
deleteExam: anExam
	(self confirmYesNo: 'examModuleTeacher:reallyDeleteExamQM') ifTrue: [
		self wd removeExam: anExam]