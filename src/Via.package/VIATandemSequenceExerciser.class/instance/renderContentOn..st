rendering
renderContentOn: html
	playerNumber ifNil: [ self renderStartPageOn: html. ^ self ].
	
	self isQuestioningMyTurn
		ifTrue: [ self renderQuestionAndAnswerOn: html ]
		ifFalse: [ self renderQuestionOn: html ].
		
	self renderNavigationOn: html