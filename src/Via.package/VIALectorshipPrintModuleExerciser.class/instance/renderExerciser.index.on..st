rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	html div class: 'taskTitle'; with: [
		html span: anInteger.
		html space.
		html span: aTaskExerciser task title.
		html space.
		html span: [
			aTaskExerciser task classification activityTypeTags do: [:each |
				html text: each text capitalized]
			separatedBy: [html space]
		].
	].
	
	html div: aTaskExerciser