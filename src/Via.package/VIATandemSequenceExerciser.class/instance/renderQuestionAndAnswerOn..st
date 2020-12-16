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
				html div class: 'interaction'; with: [
					self ifShowCorrection: [
						| spinnerId |
						spinnerId := html nextId.
						html div class: 'buttons'; with: [
							html anchor
								onClick: ((self jsSend: 'notCorrect'),
									(html jQuery id: spinnerId) show);
								with: [ html iconBeWrong ].
							(html ukSpinner) id: spinnerId; class: 'spinner'.
							html anchor
								onClick: ((self jsSend: 'correct'),
									(html jQuery id: spinnerId) show);
								with: [ html iconBeCorrect ] ].
					] else: [
						self ajaxAction: [ self goAhead ] on: html with: [
							html fasIcon: 'chevron-right']
				]]
			]
		]
	]