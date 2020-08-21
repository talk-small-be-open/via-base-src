initialization
initialize 
	super initialize.
	
	moduleExerciseGSRENAME ifNil: [
		moduleExerciseGSRENAME := self currentPortfolio exerciseForModule: model]