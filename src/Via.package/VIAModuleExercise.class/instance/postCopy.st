as yet unclassified
postCopy
	super postCopy.
	
	taskExercises := taskExercises copyWithCopiedElements.
	
	taskExercises do: [:each |
		each setModuleExercise: self]