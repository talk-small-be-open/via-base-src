as yet unclassified
callDeviceDetector
	self session needsDeviceDetection ifTrue: [
		"IMPORTANT: Dont use simple call: as GemStone showed some strange WARequestNotFound behaviour"
		self call: VIADeviceDetectorComponent new onAnswer: [ self restart ]]