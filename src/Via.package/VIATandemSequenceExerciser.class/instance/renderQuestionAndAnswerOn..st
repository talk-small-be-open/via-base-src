rendering
renderQuestionAndAnswerOn: html
	| id |
	id := html nextId.
	html div class: 'questionAndAnswer current'; with: [
		self renderQuestionOn: html.
		html div class: 'answer'; class: self otherPlayerCss; with: [
			self renderPlayerLetter: self otherPlayerLetter on: html.
"			html span: '(Me)'."
			
			html div
				ukToggleFadeTarget: ('#', id);
				class: 'answerIcon';
				with: [
					html iconAnswer.
					"t: 'tandemSequence:answer'; iconDropdown."
				].
			
			html div class: 'body'; id: id; beHidden; with: [
				currentQAndA answerBrick acceptRenderingVisitor: parentExerciser on: html.
				self ifShowCorrection: [
					html div class: 'correction'; with: [
							html anchor
								onClick: (self jsSend: 'notCorrect');
								with: [ html image style: 'width: 3em'; url: '/site/images/button-wrong.svg' ].
							html anchor
								onClick: (self jsSend: 'correct');
								with: [ html image style: 'width: 3em'; url: '/site/images/button-correct.svg' ].
				]]
			]
		]
	]