initialization
initialize
	super initialize.


"	targetRelativePath := 'uploads'."
	uploadSessionUuid := UUID new asString36.
	
	optimizeAudio := true.
	jsInputDeviceId := self session lastUsedBrowserAudioInputId ifBlank: ['default'].
	
	self addContainerDiv