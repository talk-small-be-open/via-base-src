rendering
renderTitleOn: html
	html heading level2; class: 'moduleTitle'; with: [
		html text: model displayName].
	html heading level3; with: [html lectorText: 'For lectorship'].

	html paragraph: [
		html lectorText: ('Level: ', model exerciseLevel)]