rendering
renderQuestionAndAnswerOn: html
	html div class: 'questionAndAnswer'; with: [
		self renderQuestionOn: html.
		html div class: 'answer'; with: [
			html iconAnswer.
			currentQAndA answerBrick acceptRenderingVisitor: parentExerciser on: html]
	].
