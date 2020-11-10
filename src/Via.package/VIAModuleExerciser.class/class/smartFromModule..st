as yet unclassified
smartFromModule: aModule
	"Factory!"

	"Ist es ein Prüfungsmodul?"
	aModule isExam ifTrue: [
		| exam |
		"Lehrer soll nicht die Prüfung machen, sondern eine Übersicht erhalten"
		self currentUser isTeacher ifTrue: [
			^VIAExamsModuleTeacherComponent model: aModule].
		
		"Allenfalls hat der Benutzer bereits an der Prüfung teilgenommen?"
		"OPTIMIZE: Evt. hat der User an mehrfachen Exams teilgenommen..."
		exam := (aModule examsOfStudent: self currentUser) firstOrNil.
		
		exam ifNotNil: [
			^VIATduExamModuleViewExerciser exam: exam.
		].

"NICHT, weil: An einer Prüfung teilnehmen geht via gotoExam."
"		^(VIAExamModuleExerciser model: aModule) start; yourself."
	].
		
	^(self model: aModule) start; yourself