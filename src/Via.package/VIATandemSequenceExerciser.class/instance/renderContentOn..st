rendering
renderContentOn: html
	html div class: 'uk-width-1-2@l uk-align-center'; with: [
		playerNumber ifNil: [ self renderStartPageOn: html. ^ self ].
		
		(randomCode isNil and: [ taskBrick shuffleSequence ]) ifTrue: [
			self renderRandomizationPageOn: html.
			^ self].
		
		currentNumber ifNil: [ self renderStartButtonOn: html. ^ self ].
		
		taskBrick showHistory ifTrue: [
			self renderHistoryOn: html.
		].
		
		self isQuestioningMyTurn
			ifTrue: [ self renderQuestionAndAnswerOn: html ]
			ifFalse: [ self renderQuestionAndHiddenAnswerOn: html ].
			
		self renderNavigationOn: html ]