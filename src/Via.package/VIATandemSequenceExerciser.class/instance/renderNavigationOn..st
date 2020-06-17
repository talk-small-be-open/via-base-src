rendering
renderNavigationOn: html		
	html div: [ 
		html anchor
			callback: [ self goBack ];
			with: '<'.
		html span: currentNumber asString.
		html span: '/'.
		html span: total asString.
		html anchor
			callback: [ self goAhead ];
			with: '>'.
	 ]