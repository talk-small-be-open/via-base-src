as yet unclassified
renderTitleOn: html
	html heading level2; class: 'moduleTitle'; with: [
		html span class: 'logo'; with: [
			html image
				url: ('/site/images/', self website logoFilename);
				height: 'auto';
				width: '60px'.
			html break.
			html text: self website domain].

		html t: 'schoolPrintSolution:solution'.
		html text: ': '.
		html span
			class: 'level-badge';
			class: ('level-', model exerciseLevel asLowercase);
			with: model exerciseLevel.
		html space.

		html text: model displayName].
	
		self renderTeacherInfoOn: html