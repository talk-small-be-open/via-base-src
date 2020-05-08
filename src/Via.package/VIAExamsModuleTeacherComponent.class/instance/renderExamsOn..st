rendering
renderExamsOn: html
	html ukTable class: 'uk-table-condensed'; with: [
		html tableHead: [
			html tableRow: [
				html tableHeading t: 'examModuleTeacher:date'.
				html tableHeading t: 'examModuleTeacher:examUrl'.
				html tableHeading.
				html tableHeading t: 'examModuleTeacher:students'.
				html tableHeading.
			]].
		html tableBody: [
			(model examsOfTeacher: self currentUser) do: [:each |
				html tableRow: [
					html tableData: (VIAHelper germanDateStringFor: each createdAt).
					html tableData: [
						html span
							selectOnClick;
							with: each permaUrl].
					html tableData: [
						html anchor
							url: ('mailto:?subject=Prova&body=', each permaUrl);
							t: 'examModuleTeacher:sendUrlByEmail'
					].
					html tableData: [self renderStudentsIn: each on: html].
					html tableData: [
						html anchor
							callback: [self analyzeExam: each];
							t: 'examModuleTeacher:analyzeExam'.
						html break.
						html anchor
							callback: [self deleteExam: each];
							t: 'examModuleTeacher:deleteExam'.
						html break.
						html anchor
							callback: [self toggleVisibility: each];
							with: [
								each isVisibleAfterSubmit
									ifTrue: [html iconChecked]
									ifFalse: [html iconUnchecked].
								html space; t: 'examModuleTeacher:examResultsVisible'
								].
					]
				]]]].