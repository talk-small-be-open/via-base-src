as yet unclassified
renderContentOn: html
	html heading level1; with: 'UI Texts'.
	html paragraph: 'Hint: Use Pillar for formatting!'.
	html skAnchorButton
		callback: [self refresh];
		with: 'Refresh'.
	html skAnchorButton
		callback: [self downloadTextFile];
		with: 'Download texts'.
	html table: [
		uiTextKeys do: [:each |
			html tableRow: [
				html tableData: each.
				html tableData: [html pillar: (self db uiTextAt: each)].
				html tableData: [
					html anchor
						callback: [self editKey: each];
						with: 'Edit'.
					html space.
					html anchor
						title: 'Add missing languages';
						callback: [self addMissingLanguagesKey: each];
						with: 'AML'.
					html space.
					html anchor
						callback: [self deleteKey: each];
						with: 'Delete'
				]
			]]]