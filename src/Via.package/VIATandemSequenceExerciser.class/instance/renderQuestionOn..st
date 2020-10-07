rendering
renderQuestionOn: html
	html div class: 'question'; class: self playerCss; with: [
		self renderQuestionMarkOn: html.
		currentQAndA hasExplanation ifTrue: [
			html div class: 'explanation'; with: [
				currentQAndA explanationBrick acceptRenderingVisitor: parentExerciser on: html ]].
		html div class: 'body'; with: [
			currentQAndA questionPillar acceptRenderingVisitor: parentExerciser on: html ]].