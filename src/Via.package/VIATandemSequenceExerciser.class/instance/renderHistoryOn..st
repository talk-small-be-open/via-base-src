rendering
renderHistoryOn: html
	self qAndAs do: [ :each |
"		| playerCss |
		playerCss := (self playerCss: (self playerInTurnInRound: index))."
		
		html div class: 'questionAndAnswer'; with: [
			html div class: 'question history'; with: [
				each hasExplanation ifTrue: [
					html div class: 'explanation'; with: [
						each explanationBrick acceptRenderingVisitor: parentExerciser on: html ]].
"				self renderQuestionMarkOn: html."
				each questionPillar acceptRenderingVisitor: parentExerciser on: html ].

			html div class: 'answer history'; with: [
				each answerBrick acceptRenderingVisitor: parentExerciser on: html]]
	].