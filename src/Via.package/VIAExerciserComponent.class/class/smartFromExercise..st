as yet unclassified
smartFromExercise: aTaskExercise
	aTaskExercise module isExam ifTrue: [
		^VIATduTaskExerciserExam exercise: aTaskExercise].

	aTaskExercise isFinished ifTrue: [
		^VIAExerciserFinishedComponent exercise: aTaskExercise].

	^self exercise: aTaskExercise