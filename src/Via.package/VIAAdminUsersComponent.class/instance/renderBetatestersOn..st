rendering
renderBetatestersOn: html
	html heading level3; with: 'Beta-Testers'.

	html table: [
		self wd betatesters sortedBySortKey do: [:each |
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