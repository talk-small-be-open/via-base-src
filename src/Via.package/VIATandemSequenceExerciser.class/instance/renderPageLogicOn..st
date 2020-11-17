rendering
renderPageLogicOn: html

	"IMPORTANT: Do not surround with html! Since we use early exits"
"	playerNumber ifNil: [ self renderStartPageOn: html. ^ self ]."
	
"	(taskBrick shuffleSequence and: [randomizationDone not]) ifTrue: [
		self renderRandomizationPageOn: html.
		^ self
	]."

	self currentStep = #start ifTrue: [self renderStartPageOn: html. ^ self ].
	self currentStep = #pairing ifTrue: [self renderPairingPageOn: html. ^ self ].
	self currentStep = #step2Instruction ifTrue: [self renderStep2InstructionsOn: html. ^ self ].
	self currentStep = #summary ifTrue: [self renderSummaryPageOn: html. ^ self ].
	
	"Doublecheck"
	self currentStep isInteger ifFalse: [ self error: 'Error in game sequence. Step is unhandled.' ].
	
	self renderPageGameOn: html