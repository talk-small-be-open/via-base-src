rendering
renderQuestionOn: html
	html div class: 'question'; class: self playerCss; with: [
		currentQAndA hasExplanation ifTrue: [
			html div class: 'explanation'; with: [
				currentQAndA explanationBrick acceptRenderingVisitor: parentExerciser on: html ]].
		self renderQuestionMarkOn: html.
		html div class: 'body'; with: [
			currentQAndA questionPillar acceptRenderingVisitor: parentExerciser on: html ]].