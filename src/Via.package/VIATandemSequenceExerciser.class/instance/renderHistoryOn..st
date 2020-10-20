rendering
renderHistoryOn: html
	self passedQAndAs withIndexDo: [ :each :index |
		| playerCss |
		playerCss := (self playerCss: (self playerInTurnInRound: index)).
		
		html div class: 'questionAndAnswer'; with: [
			html div class: 'question'; class: playerCss; with: [
				each hasExplanation ifTrue: [
					html div class: 'explanation'; with: [
						each explanationBrick acceptRenderingVisitor: parentExerciser on: html ]].
"				self renderQuestionMarkOn: html."
				each questionPillar acceptRenderingVisitor: parentExerciser on: html ].

			html div class: 'answer'; class: playerCss; with: [
				each answerBrick acceptRenderingVisitor: parentExerciser on: html]]
	].