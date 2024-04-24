checking
reset
	"Reset the part of answers only of that task"
	taskBrick resetAnswersOfExercise: self exercise.

	"Exit the exerciser, so that it will be freshly created again from the parent exerciser"
"	self class doesUseExitToRestart ifTrue: [
		self exit ]"