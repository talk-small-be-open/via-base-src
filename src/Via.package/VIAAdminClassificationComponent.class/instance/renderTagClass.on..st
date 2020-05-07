rendering
renderTagClass: aTagClass on: html
	html heading level4; t: aTagClass translationKey.
	html span: 'Create new (comma separated): '.
	html textInput
		callback: [:value | self createNewTags: value type: aTagClass].
	html space.
	html submitButton
		with: 'Create'.
	html table: [
		(aTagClass allForWebsite: self website) sortedBySortKey do: [:each |
			html tableRow: [
				html tableData: each text.
"				html tableData: each code."
				html tableData: [
					html anchor
						callback: [self editTag: each];
						with: 'Edit'.
					html space.
					html anchor
						callback: [self deleteTag: each];
						with: 'Delete']]]].