rendering
renderQuestionAndHiddenAnswerOn: html
	html div class: 'questionAndAnswer current hiddenAnswer'; with: [
		self renderQuestionOn: html.
		html div class: 'answer'; class: self otherPlayerCss]