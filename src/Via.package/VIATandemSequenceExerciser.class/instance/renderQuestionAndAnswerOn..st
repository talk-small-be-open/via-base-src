rendering
renderQuestionAndAnswerOn: html
	| id |
	id := html nextId.
	html div class: 'questionAndAnswer current'; with: [
		self renderQuestionOn: html.
		html div class: 'answer'; class: self playerInTurnCss; with: [
"			html span class: 'playerLabel'; with: self playerInTurnLetter.
			html span: '(Me)'."
			
			html div
				ukToggleFadeTarget: ('#', id);
				class: 'answerIcon';
				with: [
					html iconAnswer; t: 'tandemSequence:answer'; iconDropdown.
				].
			html div class: 'body'; id: id; beHidden; with: [
				currentQAndA answerBrick acceptRenderingVisitor: parentExerciser on: html.
				html anchorButton
					onClick: (self jsSend: 'correct');
					with: 'correct'.
				html anchorButton
					onClick: (self jsSend: 'notCorrect');
					with: 'not correct'.
					
			]
		]
	].
