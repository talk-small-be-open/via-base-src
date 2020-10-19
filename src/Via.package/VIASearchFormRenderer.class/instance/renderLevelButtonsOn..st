rendering
renderLevelButtonsOn: html
	levelTags do: [:eachLevel |
		html button
			beSubmit;
			callback: [self performWithLevelTag: eachLevel];
			class: ('uk-button level-', eachLevel asLowercase);
			class: 'selected' if: (query moduleClassification levelTag = eachLevel);
			with: eachLevel].