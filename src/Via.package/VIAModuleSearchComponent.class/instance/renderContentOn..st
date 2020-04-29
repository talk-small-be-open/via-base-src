rendering
renderContentOn: html
	html heading level3; t: 'moduleSearch:title'.
	self renderSearchOn: html.
	self renderSearchResultsOn: html