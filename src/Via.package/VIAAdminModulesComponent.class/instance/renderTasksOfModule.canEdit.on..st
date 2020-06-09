rendering
renderTasksOfModule: aModule canEdit: canEdit on: html
	aModule tasks withIndexDo: [:eachTask :index |
		html tableRow: [
			html tableData colSpan: 2; class: 'taskName'; with: [
				html text: index greaseString.
				html text: '. '.
				html text: eachTask displayName].	
			html tableData colSpan: (columnsCount-2); class: 'actions'; with: [
				canEdit ifTrue: [
					html anchor
						callback: [self editTask: eachTask module: aModule];
						with: 'Edit'.
					self ifAdmin: [
						html anchor
							callback: [self deleteTask: eachTask inModule: aModule];
							with: 'Delete'].
					html anchor
						callback: [self moveUpTask: eachTask inModule: aModule];
						title: 'Move up';
						with: [html iconUp].
					html anchor
						callback: [self moveDownTask: eachTask inModule: aModule];
						title: 'Move down';
						with: [html iconDown]].
				html anchor
					callback: [self readonlyEditTask: eachTask module: aModule];
					title: 'Sneak look inside and learn from it';
					with: 'Spy'.

				html popupAnchor
					dependent: true;
					windowTitle: 'Preview';
					callback: [self testdriveTask: eachTask module: aModule];
"							target: '_blank';"
					title: 'Preview single task and test it';
					with: 'Test'.
					]]].
	canEdit ifTrue: [
		html tableRow: [
			html tableData class: 'taskName'; colSpan: columnsCount; with: [
				html anchor
					callback: [self createTaskInModule: aModule];
					with: '+ Add task']]].
	html tableRow class: 'tasksBottom'; with: [
		html tableData colSpan: columnsCount]