as yet unclassified
renderExamButtonsOn: html
	html submitButton
		class: 'recheck';
"		popover: 'exerciser:exam:save:info't;"
		callback: [self checkButtonClicked];
		with: [
			html t: 'exerciser:exam:save'.
			html small t: 'exerciser:exam:save:info'.
		].
"	html space.
	html submitButton
		class: 'revealAnswers';
		popover: 'exerciser:exam:submit:info't;
		callback: [self submitExam];
		with: [html t: 'exerciser:exam:submit']"