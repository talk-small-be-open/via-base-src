rendering-visitor
renderImageDisplayer: anImageDisplayer on: html
	html div class: 'imageDisplayer'; with: [
		html span class: 'image'; with: [
			html image
				url: anImageDisplayer imageUrl.
	]]