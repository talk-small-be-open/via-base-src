rendering
renderSelfOn: html
	self renderTitleOn: html.
	self renderModelToolbarOn: html.
	

	html strong: 'Student groups:'.
	self renderObjects: studentsGroups on: html