as yet unclassified
renderContentOn: html
	self isDetectionDone ifFalse: [ self renderDeviceDetectionOn: html. ^self].