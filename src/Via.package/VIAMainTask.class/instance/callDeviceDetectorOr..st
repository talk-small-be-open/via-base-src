as yet unclassified
callDeviceDetectorOr: aBlock
	"Hm, etwas unschön"
	self callDeviceDetector.
	self session needsDeviceDetection ifFalse: aBlock