rendering
renderQuestionOn: html
	html div class: 'question'; with: [
"		self renderHintSymbolOf: anObjectPair on: html."
		self renderQuestionMarkOn: html.
		currentQAndA questionPillar acceptRenderingVisitor: parentExerciser on: html].
