rendering
renderPageStartOn: html
	html ukContainer: [
		html heading level1; t: 'teacherCockpit:title'.

		html heading level2; t: 'teacherCockpit:studentGroups'.
		html div class: 'uk-margin'; pT: 'teacherCockpit:studentGroupsInfo'.
		html anchorButton
			callback: [ self createStudentsGroup ];
			with: [
				html iconAdd; space.
				html sT: 'teacherCockpit:createStudentGroups' ].
		html ukTable class: 'studentsGroups uk-table-small uk-table-divider'; with: [
			html tableRow: [ 
				html tableHeading sT: 'teacherCockpit:groupName'.
				html tableHeading sT: 'teacherCockpit:studentsCount'.
				html tableHeading.
			].
			studentsGroups do: [ :each |
				html tableRow: [
					html tableData: [ 
						html text: each displayName.
"Zukünftiges Feature						html anchor
							callback: [ self showGroupModules: each ];
							with: each displayName."
					].
					html tableData: each usersCount asString.
					html tableData: [ 
						html anchor
							callback: [ self editGroup: each ];
							sT: 'teacherCockpit:manage'.
						html space.
						html anchor
							callback: [ self deleteGroup: each ];
							with: [ html iconDelete ] ] ] ]
		]
	]