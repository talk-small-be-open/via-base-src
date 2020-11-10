actions
showStudent: aUser exam: anExam
	self show: ((VIATduExamModuleViewExerciser exam: anExam student: aUser)
		beShowSolution;
		addBackButton;
		yourself)