rendering
renderPageGameOn: html
"	taskBrick showHistory ifTrue: [
		self renderHistoryOn: html.
	]."
	
	self isQuestioningMyTurn
		ifTrue: [ self renderQuestionAndAnswerOn: html ]
		ifFalse: [ self renderQuestionAndHiddenAnswerOn: html ].
	
"	self renderCorrection: self currentAnswerHolder value on: html."
	"OPTIMIZE? Damit wird nur die Korrektur angezeigt, nicht aber das Resultat
	des check-Vorgangs. Dieser müsste am Ende des Formulars/Games jeweils gemacht werden,
	wie bei den Standard-Aufgaben auch" 
	html div: self currentAnswerHolder value.
	
	self renderNavigationOn: html