as yet unclassified
buildComponents

	exerciserComponents := Array new: model tasks size.
	
	model tasks do: [:each |
		| taskIndex taskExerciser |
		taskIndex := model tasks indexOf: each.

		taskExerciser := self buildExerciseComponentForTask: each.
"		taskExerciser
			parent: self."
		
		exerciserComponents
			at: taskIndex
			put: taskExerciser
	]