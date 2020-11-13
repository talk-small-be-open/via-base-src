rendering
renderPageGameOn: html
"	taskBrick showHistory ifTrue: [
		self renderHistoryOn: html.
	]."
	
	self isQuestioningMyTurn
		ifTrue: [ self renderQuestionAndAnswerOn: html ]
		ifFalse: [ self renderQuestionAndHiddenAnswerOn: html ].
		
	self renderNavigationOn: html