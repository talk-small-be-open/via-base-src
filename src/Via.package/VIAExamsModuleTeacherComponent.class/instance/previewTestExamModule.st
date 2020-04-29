actions
previewTestExamModule
	| testExam testExercise |
	testExam := (VIAExam module: model)
		teacherUser: self currentUser;
		yourself.
		
	testExercise := VIAModuleExercise module: model user: self currentUser.
	
	self show: ((VIAExamModuleExerciser exam: testExam moduleExercise: testExercise)
		addBackButton;
		yourself).