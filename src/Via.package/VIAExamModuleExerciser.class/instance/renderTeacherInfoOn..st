as yet unclassified
renderTeacherInfoOn: html
	self ifTeacher: [
"		html heading level2; with: 'Lehrerinfo für Prüfung!'.
			
		model hasExams ifTrue: [
			html table: [
				(model examsOfTeacher: self currentUser) do: [:each |
					html tableRow: [
						html tableData: each uuidString.
						html tableData: each permaUrl].
		]]]"

	]