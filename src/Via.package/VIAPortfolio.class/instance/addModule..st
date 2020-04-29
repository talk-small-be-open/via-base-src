as yet unclassified
addModule: aModule
	(self includesModule: aModule) ifFalse: [
		modules add: aModule.
"		moduleExercises at: aModule put: (VIAModuleExercise new module: aModule; yourself)."
		^aModule].
	^nil