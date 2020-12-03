rendering
renderQuestionOn: html
	html div class: 'question'; class: self playerInTurnCss; with: [
		self renderPlayerLetter: self playerInTurnLetter on: html.

		self isAnsweringMyTurn ifTrue: [ 
			html div class: 'questionIcon'; with: [
				html iconQuestion].
		].
	
		currentQAndA hasExplanation ifTrue: [
			html div class: 'explanation'; with: [
				currentQAndA explanationBrick acceptRenderingVisitor: parentExerciser on: html ]].
		html div class: 'body'; with: [
			currentQAndA questionPillar acceptRenderingVisitor: parentExerciser on: html ]].