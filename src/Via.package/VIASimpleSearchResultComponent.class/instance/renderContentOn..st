as yet unclassified
renderContentOn: html
	html ukContainer: [
"		html heading level2; t: 'simpleSearchResult:title'."
		searchResult isEmpty
			ifTrue: [
				"Sollte nicht vorkommen!"
				html paragraph: '...']
			ifFalse: [
				html ukModulesGrid: [
					searchResult do: [:each |
						moduleCardRenderer renderModule: each on: html.
				]]]]