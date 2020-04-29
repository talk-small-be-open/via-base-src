rendering
renderStudentsIn: anExam on: html
	anExam isEmpty
		ifTrue: [html span t: 'examModuleTeacher:noStudents']
		ifFalse: [
			anExam submittedUsers ifNotEmpty: [:collection |
				html ukTable class: 'uk-table-condensed'; with: [
					collection do: [:each |
						html tableRow: [
							html tableData: [
								html anchor
									popover: 'examModuleTeacher:showStudentsExam't;
									callback: [self showStudent: each exam: anExam];
									with: each fullNameFormal].
							html tableData: (anExam summaryLabelForStudent: each).
							html tableData: [
								html anchor
									callback: [self deleteStudent: each inExam: anExam];
									with: [html iconDelete]
							]]]]].
			anExam pendingUsers ifNotEmpty: [:collection |
				html div: [
					html t: 'examModuleTeacher:studentsInProgress'.
					html text: ': '.
					collection do: [:each |
						html span: each displayName] separatedBy: [html text: ', '].
					html break.
					html anchor
						callback: [self deleteAllInProgress: anExam];
						t: 'examModuleTeacher:deleteAllInProgress'
				]
		]]