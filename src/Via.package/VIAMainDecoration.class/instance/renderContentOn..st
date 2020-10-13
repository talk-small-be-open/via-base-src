as yet unclassified
renderContentOn: html
"	self isDetectionDone ifFalse: [ self renderDeviceDetectionOn: html. ^self]."
	
	self renderNextOn: html.
"	self renderBottomScriptsOn: html."