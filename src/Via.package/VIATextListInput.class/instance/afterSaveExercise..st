as yet unclassified
afterSaveExercise: anExercise
	| answerHolder |
	answerHolder := anExercise answerOf: self.
	
	"Auto reduce answer list"
	self hasMaxSolutionsCount ifFalse: [
		answerHolder value removeAllSuchThat: [ :each | each isBlank ]
	].