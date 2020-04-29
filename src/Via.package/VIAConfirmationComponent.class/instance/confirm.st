actions
confirm
	self isCaptchaSecured ifTrue: [self requestCaptcha ifFalse: [^self]].
	
	onConfirmBlock ifNotNil: [onConfirmBlock value].
	self answer: true