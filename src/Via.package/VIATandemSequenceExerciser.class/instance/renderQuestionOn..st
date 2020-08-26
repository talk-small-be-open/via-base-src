rendering
renderQuestionOn: html
	html div class: 'question'; with: [
		currentQAndA hasExplanation ifTrue: [
			html div class: 'explanation'; with: [
				currentQAndA explanationBrick acceptRenderingVisitor: parentExerciser on: html ]].
		self renderQuestionMarkOn: html.
		currentQAndA questionPillar acceptRenderingVisitor: parentExerciser on: html ].