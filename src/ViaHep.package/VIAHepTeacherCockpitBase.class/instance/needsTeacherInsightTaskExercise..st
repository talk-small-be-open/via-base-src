testing
needsTeacherInsightTaskExercise: aTaskExercise
	"OPTIMIZE: This is dirty, but pragmatic"
	^ aTaskExercise mainAnswerHolders anySatisfy: [ :each | (each value isKindOf: VIATextMemoAnswerItem) and: [ each value needsTeacher ] ]