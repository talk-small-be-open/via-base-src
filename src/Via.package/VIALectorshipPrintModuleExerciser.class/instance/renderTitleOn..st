rendering
renderTitleOn: html
	html heading level1; class: 'moduleTitle'; with: [
		html text: model displayName.
		html break.
		html lectorText: 'For lectorship'].

	html paragraph: [
		html lectorText: ('Level: ', model exerciseLevel)]