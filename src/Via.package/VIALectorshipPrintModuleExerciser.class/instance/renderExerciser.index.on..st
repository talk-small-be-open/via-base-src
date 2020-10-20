rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	html heading level2; class: 'taskTitle'; with: [
		html span: anInteger.
		html span: '. '.
		html span: aTaskExerciser task title.
		html space.
		html span: [
			aTaskExerciser task classification activityTypeTags do: [:each |
				html text: each text capitalized]
			separatedBy: [html space]
		].
	].
	
	html div: aTaskExerciser