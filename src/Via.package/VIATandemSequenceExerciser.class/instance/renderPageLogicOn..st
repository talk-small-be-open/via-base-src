rendering
renderPageLogicOn: html

	"IMPORTANT: Do not surround with html! Since we use early exits"
	playerNumber ifNil: [ self renderStartPageOn: html. ^ self ].
	
	"If there was no autostart (only in case of shuffle mode, so far)"
	currentNumber ifNil: [
		taskBrick shuffleSequence ifTrue: [
			self renderRandomizationPageOn: html].

		^ self
	].
	
	self renderPageGameOn: html