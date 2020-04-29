actions
showStudent: aUser exam: anExam
	self show: ((VIAExamModuleViewExerciser exam: anExam student: aUser)
		beShowSolution;
		addBackButton;
		yourself)