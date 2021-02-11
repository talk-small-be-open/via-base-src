actions
showStudent: aUser exam: anExam
	self show: ((self am examModuleViewExerciserClass exam: anExam student: aUser)
		beShowSolution;
		addBackButton;
		yourself)