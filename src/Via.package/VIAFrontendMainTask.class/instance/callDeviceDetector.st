as yet unclassified
callDeviceDetector
	self session needsDeviceDetection ifTrue: [
		self call: VIADeviceDetectorComponent new ]