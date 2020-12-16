as yet unclassified
callDeviceDetectorOr: aBlock
	self session needsDeviceDetection ifTrue: [
		"IMPORTANT: Dont use simple call: as GemStone showed some strange WARequestNotFound behaviour"
		"OPTIMIZE: comment Maybe obsolete, seaside HAD this bug"
		self call: VIADeviceDetectorComponent new onAnswer: [ self restart ]
	]
	ifFalse: aBlock