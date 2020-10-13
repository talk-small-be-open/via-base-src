testing
renderTags: aModule on: html
	html div class: 'tdu-tags uk-visible@s'; with: [
		html t: 'moduleCard:tags'.
		self displayedTagsForModule: aModule do: [:each |
			html text: each text] separatedBy: [html text: ', ']
	]