initialization
initialize
	super initialize.
	self calculateCaptchaCode.
	self resetValidity.
	self addContainerDiv.
	retry := 0.
	maxRetryCount := 10.