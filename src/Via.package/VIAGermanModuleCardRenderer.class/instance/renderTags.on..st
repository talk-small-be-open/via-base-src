as yet unclassified
renderTags: aModule on: html
	html div class: 'hm-tags'; with: [
		html t: 'moduleCard:tags'.
		self displayedTagsForModule: aModule do: [:each |
			html text: each text] separatedBy: [html text: ', '].
		(self isSwissGerman: aModule) ifTrue: [html div: 'GRÜEZI!' ]
	]