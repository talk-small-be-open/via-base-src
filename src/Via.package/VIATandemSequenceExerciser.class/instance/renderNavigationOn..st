rendering
renderNavigationOn: html		
	html div class: 'navigation'; with: [ 
		html span class: 'left'; with: [
			self renderToolbarOn: html.
		].
		html span: [
			html span: currentQAndACounter asString.
			html span: '/'.
			html span: totalQAndAs asString].
		html span class: 'right'; with: [
"			self ajaxAction: [ self goAhead ] on: html with: [
				html fasIcon: 'chevron-right' ]"
"			html anchor
				callback: [ self goAhead ];
				with: [html iconRight]"
		].
	 ]