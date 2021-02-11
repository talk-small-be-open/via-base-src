rendering
renderInfo: each on: html
	html div: [
		html span: each title.
	].
	html div class: 'publicComment'; with: (each comment).
	html div class: 'internalComment'; with: (each internalComment).