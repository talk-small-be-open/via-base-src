actions
createNewExam
	| newExam |
	newExam := (VIAExam module: model)
		teacherUser: self currentUser;
		yourself.

	self wd addExam: newExam