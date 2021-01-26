rendering
renderSearchPerformOn: html
	html space.
	html submitButton callback: [self performSearch]; with: 'Search'.
	html space.