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
				html tableHeading.
				html tableHeading sT: 'teacherCockpit:studentsCount'.
				html tableHeading sT: 'teacherCockpit:delete'.
			].
			studentsGroups do: [ :each |
				html tableRow: [
					html tableData: [ 
						html anchor
							callback: [ self showGroupModules: each ];
							with: each displayName ].
					html tableData: each usersCount asString.
					html tableData: [ 
						html anchor
							callback: [ self editGroup: each ];
							with: 'EDIT'.
						html space.
						html anchor
							callback: [ self deleteGroup: each ];
							with: [ html iconDelete ] ] ] ]
		]
	]