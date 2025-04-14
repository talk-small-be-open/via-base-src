rendering
renderPreviousOn: html
	html span class: 'previous'; with: [ 
		self isOnFirstPage
			ifFalse: [ html anchor callback: [ self previousPage ]; with: '<<' ]
			ifTrue: [ html text: '<<' ] ]