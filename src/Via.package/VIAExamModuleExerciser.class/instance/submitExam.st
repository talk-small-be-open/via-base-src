as yet unclassified
submitExam
	
	exam ifNil: [^self].
	
	(exam hasUserSubmitted: self currentUser) ifTrue: [
		self inform: 'exam:youDoneThisExamAlready'.
		^self
	].
	
"Besser nicht, weil die Schüler dann vergessen zu bestätigen."	
"	(self confirmYesNo: 'exam:reallySubmitExamQM') ifFalse: [^self]."
	
	exam submitModuleExercise: moduleExercise.

	"Prüfung ebenfalls in Portfolio übernehmen, erst wenn diese eingereicht wurde"
"Veraltet, wir speichern Exam im Portfolio	self currentPortfolio addModuleExercise: moduleExercise."
	
"NICHT, weil dies ein seaside call ist. Wir müssen hier aber answer machen, damit die Transaction schliessen kann.	self inform: 'exam:successfullySubmittedExam'."

	self flashMessage: 'exam:successfullySubmittedExam't.
	self close