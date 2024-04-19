rendering
renderSelfOn: html
	self renderTitleOn: html.
	self renderModelToolbarOn: html.
	self renderUserToolbarOn: html.

	self renderAppClientsOn: html.
	
	html heading level2; with: 'Student groups'.
	self renderObjects: studentsGroups on: html