rendering
renderQuestionAndHiddenAnswerOn: html

	self isFirstRound ifTrue: [
		html hintBalloon: 'tandem:myFirstQuestion'
	].

	html div class: 'questionAndAnswer current hiddenAnswer'; with: [
"		html span class: 'playerLabel'; with: self playerInTurnLetter.
		html span: '(Me)'."
		self renderQuestionOn: html.
"		html div
			class: 'answer';
			class: self otherPlayerCss;
			with: [ html iconAnswer ]"
	]