as yet unclassified
receiveAudioSourceId
	jsInputDeviceId := self requestContext request postFields at: 'audioRecorderSourceId' ifAbsent: [nil].
	self session lastUsedBrowserAudioInputId: jsInputDeviceId