actions
validate
	isValid := enteredCode = captchaCode.
	
	isValid
		ifTrue: [self okGoAhead]
		ifFalse: [self retry]