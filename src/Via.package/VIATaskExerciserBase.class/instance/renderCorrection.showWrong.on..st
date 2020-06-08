rendering
renderCorrection: anAnswerHolder showWrong: aBoolean on: html
	self isShowCorrection ifTrue: [
		anAnswerHolder ifChecked: [
			html span: [
				anAnswerHolder ifCorrect: [html span class: 'correctIcon'; with: [html iconCorrect]].
				anAnswerHolder ifPartiallyCorrect: [html span class: 'partiallyCorrectIcon'; with: [html iconPartiallyCorrect]].
				
				aBoolean ifTrue: [
					anAnswerHolder ifWrong: [html span class: 'wrongIcon'; with: [html iconWrong]]]
		]]]