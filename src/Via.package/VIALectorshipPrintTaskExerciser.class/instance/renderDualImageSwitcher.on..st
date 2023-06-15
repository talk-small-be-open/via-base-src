rendering-visitor
renderDualImageSwitcher: anImageSwitcher on: html
	html div class: 'dualImageSwitcher'; with: [
		html span class: 'image1'; with: [
			html image
				url: anImageSwitcher image1Url ].
		html space.
		html span class: 'image2'; with: [
			html image
				url: anImageSwitcher image2Url ].
	]