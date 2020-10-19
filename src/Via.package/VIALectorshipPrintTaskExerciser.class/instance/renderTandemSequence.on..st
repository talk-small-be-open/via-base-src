rendering
renderTandemSequence: aTandemSequence on: html
	html div class: 'tandemSequence'; with: [
		aTandemSequence qAndAs do: [ :each |
			html div class: 'questionAndAnswer'; with: [
				html div class: 'question'; with: [
					each hasExplanation ifTrue: [
						html div class: 'explanation'; with: [
							each explanationBrick acceptRenderingVisitor: self on: html ]].
	"				self renderQuestionMarkOn: html."
					each questionPillar acceptRenderingVisitor: self on: html ].

				html div class: 'answer'; with: [
					each answerBrick acceptRenderingVisitor: self on: html]]
		]]