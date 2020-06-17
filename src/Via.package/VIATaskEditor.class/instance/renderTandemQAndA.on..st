rendering-visitor
renderTandemQAndA: aTandemQAndA on: html
	html div class: 'inputEditor'; with: [
"		html span: 'Hint: '.
		html textArea
			on: #hintText of: aTandemQAndA."

		html div: 'Info'.
		aTandemQAndA explanationBrick acceptRenderingVisitor: self on: html.
		html div: 'Question (Pillar)'.
		aTandemQAndA questionPillar acceptRenderingVisitor: self on: html.
		html div: 'Answer (Pillar)'.
		aTandemQAndA answerPillar acceptRenderingVisitor: self on: html]