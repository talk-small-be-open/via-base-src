as yet unclassified
addExam: anExam
	(self includesExam: anExam) ifFalse: [
		exams add: anExam.
		^anExam].
	^nil