rendering
renderContentOn: html
	html heading: 'Assets usage report'.
	self renderToolbarOn: html.

	html div
		style: 'text-align: center';
		with: batcher.

	self renderListOn: html.

	html div
		style: 'text-align: center';
		with: batcher.
