actions
send
	(self confirmYesNo: 'Really send mass mail?') ifTrue: [ self reallySend ]