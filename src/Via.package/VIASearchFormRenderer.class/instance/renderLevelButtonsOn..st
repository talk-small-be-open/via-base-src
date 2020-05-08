rendering
renderLevelButtonsOn: html
	self wd exerciseLevels do: [:eachLevel |
		"html anchor"
		html button
			beSubmit;
			callback: [self performWithExerciseLevel: eachLevel];
			class: ('uk-button level-', eachLevel asLowercase);
			class: 'selected' if: (query includesExerciseLevel: eachLevel);
			with: eachLevel].