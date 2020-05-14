rendering
renderTitleOn: html
	html heading level2; class: 'moduleTitle'; with: [
		html span class: 'logo'; with: [
			html image
				url: ('/site/images/', self website logoFilename);
				height: 'auto';
				width: '60px'.
			html break.
			html text: self website domain].

		html span
			class: 'level-badge';
			class: ('level-', model exerciseLevel asLowercase);
			with: model exerciseLevel.
		html space.

		html text: model displayName].

"	html div
		with: [
			html t: 'moduleExerciser:tags'.
			html space.
			subtitleTags do: [:each |
				html text: each text] separatedBy: [html text: ', '].
			html break.
			html t: 'moduleExerciser:authors'.
			model authorUsers ifNotBlank: [:authors |
				html space.
				authors do: [:each |
					html text: each displayName] separatedBy: [html text: ', ']].
		
		]"