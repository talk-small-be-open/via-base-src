rendering
renderContentOn: html
	playerNumber ifNil: [ self renderStartPageOn: html. ^ self ].
	
	(randomCode isNil and: [ taskBrick shuffleSequence ]) ifTrue: [
		self renderRandomizationPageOn: html.
		^ self].
	
	currentNumber ifNil: [ self renderStartButtonOn: html. ^ self ].
	
	self isQuestioningMyTurn
		ifTrue: [ self renderQuestionAndAnswerOn: html ]
		ifFalse: [ self renderQuestionOn: html ].
		
	self renderNavigationOn: html