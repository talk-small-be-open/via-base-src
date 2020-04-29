rendering
renderTeachersOn: html
	html heading level3; with: 'Teachers'.

	html table: [
		self wd teachers sortedBySortKey do: [:each |
			html tableRow: [
				html tableData: each displayName.
				html tableData: [
					html anchor
						callback: [self editUser: each];
						with: 'Edit'.
"					html space.
					html anchor
						callback: [self deleteUser: each];
						with: 'Delete'"
					 ]
			]]]