rendering
renderContentOn: html
	html div class: 'uk-container'; with: [
		searchFormRenderer renderOn: html.
		html heading level2; t: 'publicModuleSearch:searchResults'.
		searchResult isEmpty
			ifTrue: [
				html paragraph t: 'publicModuleSearch:noResults']
			ifFalse: [
				html ukModulesGrid: [
					searchResult do: [:each |
						moduleCardRenderer renderModule: each on: html.
				]]]]