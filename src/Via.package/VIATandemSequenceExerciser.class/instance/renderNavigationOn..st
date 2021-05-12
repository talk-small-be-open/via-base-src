rendering
renderNavigationOn: html		
	html div class: 'navigation'; with: [ 
		html span class: 'left'; with: [
			self renderToolbarOn: html.
		].
		html span class: 'center'; with: [
			self ifPlayer1: [
				html span class: 'tool'; with: [
					self ajaxAction: [ self goBack ] on: html with: [
						html iconLeft ]]].
			
			html span: [
				html text: currentQAndACounter asString.
				html text: '/'.
				html text: totalQAndAs asString ].

			self ifPlayer1: [
				html span class: 'tool'; with: [
					self ajaxAction: [ self goAhead ] on: html with: [
						html iconRight ]]].
		
		].
		html span class: 'right'; with: [
"			self ajaxAction: [ self goAhead ] on: html with: [
				html fasIcon: 'chevron-right' ]"
"			html anchor
				callback: [ self goAhead ];
				with: [html iconRight]"
		].
	 ]