rendering
renderEditorsOn: html
	html heading level3; with: 'Editors'.

	html table: [
		self wd editors sortedBySortKey do: [:each |
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