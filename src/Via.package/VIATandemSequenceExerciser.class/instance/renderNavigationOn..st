rendering
renderNavigationOn: html		
	html div class: 'navigation'; with: [ 
		html span: [
			self ajaxAction: [ self goBack ] on: html with: [
				html iconLeft]
		].
		html span: [
			html span: currentQAndACounter asString.
			html span: '/'.
			html span: totalQAndAs asString].
		html span: [
			self ajaxAction: [ self goAhead ] on: html with: [
				html iconRight]
"			html anchor
				callback: [ self goAhead ];
				with: [html iconRight]"
		].
	 ]