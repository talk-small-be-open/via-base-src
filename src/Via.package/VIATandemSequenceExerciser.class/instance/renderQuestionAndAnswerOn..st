rendering
renderQuestionAndAnswerOn: html
	| id |
	id := html nextId.
	
	"Hint"
	self isFirstRound ifTrue: [
		html hintBalloon: 'tandem:myFirstAnswer'.
	].
	
	html div class: 'questionAndAnswer current withAnswer'; with: [
		self renderQuestionOn: html.
		html div class: 'answer'; class: self otherPlayerCss; with: [
			self renderPlayerLabel: self otherPlayerNumber on: html.
			
			html div
				ukToggleTarget: ('#', id) class: 'partlyHidden';
				class: 'answerIcon';
				with: [
					html iconAnswer.
					html break.
					html iconDropdown.
					"t: 'tandemSequence:answer'; iconDropdown."
				].
			
			html div
				class: 'body';
				class: 'partlyHidden' if: isTestdrive not;
				id: id;
				with: [
				html div class: 'answerContent'; with: [
					currentQAndA answerBrick acceptRenderingVisitor: parentExerciser on: html ].
				html div class: 'interaction'; with: [
					self ifShowCorrection: [
						| spinnerId |
						spinnerId := html nextId.
						html div class: 'correctionButtons'; with: [
							| index |
							index := self currentStep asString.
							html div: [
								html anchor
									onClick: ((self jsSend: ('notCorrect-', index)),
										(html jQuery id: spinnerId) show);
									with: [ html iconBeWrong ].
								html break.
								html span t: 'tandemSequence:wrongButtonText' ].
							(html ukSpinner) id: spinnerId; class: 'spinner'.
							html div: [
								html anchor
									onClick: ((self jsSend: ('correct-', index)),
										(html jQuery id: spinnerId) show);
									with: [ html iconBeCorrect ].
								html break.
								html span t: 'tandemSequence:correctButtonText' ] ].
					] else: [
						html div class: 'goAheadButton'; with: [
							self ajaxAction: [ self goAhead ] on: html with: [
								html fasIcon: 'chevron-right']]
				]]
			]
		]
	]