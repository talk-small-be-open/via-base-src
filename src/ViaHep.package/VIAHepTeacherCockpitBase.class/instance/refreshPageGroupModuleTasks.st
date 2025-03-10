actions
refreshPageGroupModuleTasks
	
	moduleExercises := portfolios select: [ :each | each includesModule: selectedModule ] thenCollect: [ :each | each exerciseForModule: selectedModule ].

	taskAverages := selectedModule tasks map: [ :eachTask |
		| finished done |
		finished := OrderedCollection new.
		done := OrderedCollection new.
		
		moduleExercises do: [ :eachModuleExercise |
			(eachModuleExercise includesTask: eachTask) ifTrue: [
				| taskExercise |
				taskExercise := eachModuleExercise exerciseForTask: eachTask.
				done add: taskExercise percentDone.
				finished add: taskExercise percentFinished ]
		].

		{ done average. finished average }
	]