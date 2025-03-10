rendering
renderPageGroupModuleTasksOn: html

	html ukContainer: [

		html heading level2; with: selectedModule displayName.
		
		html ukButtonGroup: [ 
			self renderBackButton: 'teacherCockpit:back' callback: [ self gotoPageGroupModules ] on: html.
			html anchorButton
				callback: [ self refreshPageGroupModuleTasks ];
				with: [ 
					html iconRefresh.
					html sT: 'teacherCockpit:reload' ]
		].
		
		html div class: 'topBuffer tasksList'; with: [ 
			selectedModule tasksAndIndicesDo: [ :each :index |
				html div: [
					html text: index asString.
					html text: '. '.
					html text: each title ].
			].
		].

		html ukTable class: 'uk-table-small uk-table-divider'; with: [ 
			html tableRow: [ 
				html tableHeading.
				selectedModule tasksAndIndicesDo: [ :each :index |
					html tableHeading: [
						html div: index asString.
					] ]
			].

			html tableRow class: 'average'; with: [ 
				html tableData pT: 'teacherCockpit:average'.
				selectedModule tasksAndIndicesDo: [ :each :index |
					| array f d |
					array := taskAverages at: each.
					d := array first.
					f := array second.
					
					html tableData: [ 
						html iconProgressFromPercent: d correctness: f.
					]
				]
			].

		
			moduleExercises do: [ :eachExercise |
				html tableRow: [ 
					html tableData: [
						| teacherCanView |
						teacherCanView := self canTeacherView: eachExercise user.

						html span: eachExercise user displayName.
						teacherCanView ifTrue: [
							html space.
							html anchor
								callback: [ self viewModuleExercise: eachExercise ];
								sT: 'teacherCockpit:viewExercise' ]
					].
					
					selectedModule tasksAndIndicesDo: [ :eachTask :index |
						html tableData: [ 
							(eachExercise includesTask: eachTask) ifTrue: [
								| taskExercise |
								taskExercise := eachExercise exerciseForTask: eachTask.
								html iconDoneFinishedExercise: eachExercise.

"								html iconProgressFromPercent: (taskExercise percentDone).
								html iconProgressFromPercent: (taskExercise percentFinished)."
								(self needsTeacherInsightTaskExercise: taskExercise) ifTrue: [ html space; iconNeedsTeacher ].
							] ifFalse: [
								html mdash
							]

			 			] ]
				].
		]].

	]