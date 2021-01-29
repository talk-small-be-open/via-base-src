as yet unclassified
exerciseForModule: aModule
	"Betatesting modules are never taken in the portfolio. Always a fresh new exercise"
	
	aModule isUnderBetatest ifTrue: [ ^ self newExerciseForModule: aModule].
	
	"Get existing or create new"
	^ moduleExercises at: aModule ifAbsentPut: [self newExerciseForModule: aModule]