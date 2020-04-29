actions
analyzeExam: anExam
	self show: ((VIAExamTeacherAnalyzer model: anExam)
		addBackButton;
		yourself)