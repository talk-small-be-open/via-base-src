actions
check
	self task isCheckable ifTrue: [
		exercise checkAnswers.
		self tryToFinish ]