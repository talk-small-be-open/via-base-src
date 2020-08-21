rendering-visitor
renderTandemQAndA: aTandemQAndA on: html
	html div class: 'inputEditor'; with: [
"		html span: 'Hint: '.
		html textArea
			on: #hintText of: aTandemQAndA."

		html label: 'Info for question'.
		aTandemQAndA explanationBrick acceptRenderingVisitor: self on: html.
		html label: 'Question'.
		aTandemQAndA questionPillar acceptRenderingVisitor: self on: html.
		html label: 'Answer'.
		aTandemQAndA answerBrick acceptRenderingVisitor: self on: html]