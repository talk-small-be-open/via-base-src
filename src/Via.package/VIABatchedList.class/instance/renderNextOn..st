rendering
renderNextOn: html
	html span class: 'next'; with: [
		self isOnLastPage
			ifFalse: [ html anchor callback: [ self nextPage ]; with: '>>' ]
			ifTrue: [ html text: '>>' ] ]