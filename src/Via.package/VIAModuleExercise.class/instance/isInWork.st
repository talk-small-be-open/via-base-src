testing
isInWork
	^(taskExercises anySatisfy: #isDone) and: [self isFinished not]