rendering-visitor
renderTandemQAndA: aTandemQAndA on: html
	html div class: 'inputEditor'; with: [
"		html span: 'Hint: '.
		html textArea
			on: #hintText of: aTandemQAndA."

		html div: 'Info for question'.
		aTandemQAndA explanationBrick acceptRenderingVisitor: self on: html.
		html div: 'Question'.
		aTandemQAndA questionPillar acceptRenderingVisitor: self on: html.
		html div: 'Answer'.
		aTandemQAndA answerPillar acceptRenderingVisitor: self on: html]