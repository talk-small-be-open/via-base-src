rendering
renderNextOn: html
	html span class: 'next'; with: [
		self isOnLastPage
			ifFalse: [
				html anchor callback: [ self nextPage ]; with: '>>'.
				html space.
				html anchor callback: [ self gotoLastPage ]; with: '>>>'.
			] ifTrue: [ html text: '>> >>>' ] ]