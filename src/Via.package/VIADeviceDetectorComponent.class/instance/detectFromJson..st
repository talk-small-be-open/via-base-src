as yet unclassified
detectFromJson: aJsonString
	| dict |
	dict := VIAHelper fromJson: aJsonString.

	self viewportWidth: (dict at: 'width').
	self touchEnabled: (dict at: 'touch').
	self browserType: (dict at: 'detectedBrowser').
	self isFullscreenSupported: (dict at: 'isFullscreenSupported').
	
	self beDetectionDone.