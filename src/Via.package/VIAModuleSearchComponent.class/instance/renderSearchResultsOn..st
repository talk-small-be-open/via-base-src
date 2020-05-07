rendering
renderSearchResultsOn: html
	searchResult ifNotNil: [
		html ukContainer class: 'searchResults'; with: [
			html heading level2; t: 'moduleSearch:searchResults'.
			searchResult isEmpty
				ifTrue: [
					html paragraph t: 'moduleSearch:noResults']
				ifFalse: [
					html ukModulesGrid: [
						searchResult do: [:each |
							moduleCardRenderer renderModule: each on: html.
					]]]].
	].

	showMap ifTrue: [
		self renderMapOn: html].