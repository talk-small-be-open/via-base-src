rendering
renderHistoryOn: html
	self passedQAndAs do: [ :each |
		html div class: 'questionAndAnswer'; with: [
			html div class: 'question'; class: self playerCss; with: [
				each hasExplanation ifTrue: [
					html div class: 'explanation'; with: [
						each explanationBrick acceptRenderingVisitor: parentExerciser on: html ]].
"				self renderQuestionMarkOn: html."
				each questionPillar acceptRenderingVisitor: parentExerciser on: html ].

			html div class: 'answer'; class: self playerCss; with: [
				each answerBrick acceptRenderingVisitor: parentExerciser on: html]]
	].