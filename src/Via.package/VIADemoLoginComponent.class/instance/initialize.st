initialization
initialize
	super initialize.
	captcha := VIACaptchaComponent new.
	captcha onAnswer: [ :answer | answer ifTrue: [self loginWithDummyUser] ].
	
	self addCenterContainer 