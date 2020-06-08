initialization
initialize 
	super initialize.
	
	moduleExercise ifNil: [
		moduleExercise := self currentPortfolio exerciseForModule: model]