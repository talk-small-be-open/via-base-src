rendering
renderOn: html quickHelp: aString
	html div class: 'quickHelp'; with: [
		html iconInfo; space.
		html text: 'Help: '.
		html text: aString]