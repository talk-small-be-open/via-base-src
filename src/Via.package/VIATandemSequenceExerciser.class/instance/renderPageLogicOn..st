rendering
renderPageLogicOn: html

	"IMPORTANT: Do not surround with html! Since we use early exits"
	playerNumber ifNil: [ self renderStartPageOn: html. ^ self ].
	
	(taskBrick shuffleSequence and: [randomizationDone not]) ifTrue: [
		self renderRandomizationPageOn: html.
		^ self
	].
	
	self renderPageGameOn: html