rendering
renderQuestionAndAnswerOn: html
	html div class: 'questionAndAnswer'; with: [
		html div class: 'question'; with: [
			currentQAndA hasExplanation ifTrue: [
				html div class: 'explanation'; with: [
					currentQAndA explanationBrick acceptRenderingVisitor: parentExerciser on: html ]].
			self renderQuestionMarkOn: html.
			currentQAndA questionPillar acceptRenderingVisitor: parentExerciser on: html ].
		html div class: 'answer'; with: [
			currentQAndA answerBrick acceptRenderingVisitor: parentExerciser on: html]
	].
