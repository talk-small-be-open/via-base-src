as yet unclassified
renderContentOn: html
	html heading level1; with: 'UI Texts'.
	html paragraph: 'Hint: Use Pillar for formatting!'.
	self renderToolbarOn: html.
	uiTextKeys ifNotBlank: [
		html table class: 'uiTexts'; with: [
			uiTextKeys do: [:each |
				html tableRow: [
					html tableData: each.
					html tableData: [self renderUiText: each on: html].
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
				]]]]