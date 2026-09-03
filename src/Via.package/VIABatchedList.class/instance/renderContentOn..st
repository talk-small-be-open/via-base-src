rendering
renderContentOn: html
	self maxPages <= 1 
		ifTrue: [ ^ self ].
	html div
		class: 'batch';
		with: [
			self renderPreviousOn: html.
			self renderPagesOn: html.
			self renderNextOn: html.
			
			html span: ' Total: '.
			html span: items size asString.
		]