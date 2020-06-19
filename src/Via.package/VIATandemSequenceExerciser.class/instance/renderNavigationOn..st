rendering
renderNavigationOn: html		
	html div class: 'navigation'; with: [ 
		html span: [
			html anchor
				callback: [ self goBack ];
				with: [html iconLeft]].
		html span: [
			html span: currentNumber asString.
			html span: '/'.
			html span: total asString].
		html span: [
			html anchor
				callback: [ self goAhead ];
				with: [html iconRight]].
	 ]