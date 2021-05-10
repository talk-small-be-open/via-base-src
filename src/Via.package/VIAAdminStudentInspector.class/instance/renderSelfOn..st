rendering
renderSelfOn: html
	self renderTitleOn: html.
	self renderModelToolbarOn: html.
	self renderUserToolbarOn: html.

	html strong: 'Student groups:'.
	self renderObjects: studentsGroups on: html