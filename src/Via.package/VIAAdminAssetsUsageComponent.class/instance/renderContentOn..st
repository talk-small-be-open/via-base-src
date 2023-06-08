rendering
renderContentOn: html
	html heading: 'Assets usage report'.
	self renderToolbarOn: html.

	html div
		class: 'listBatcher';
		with: batcher.

	self renderListOn: html.

	html div
		class: 'listBatcher';
		with: batcher.
