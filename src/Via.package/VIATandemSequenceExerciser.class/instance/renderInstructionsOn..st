rendering
renderInstructionsOn: html
	self isQuestioningMyTurn ifTrue: [ 
		html paragraph: 'Stelle Frage'
	] ifFalse: [ 
		html paragraph: 'Beantworte die nächste Frge' ]