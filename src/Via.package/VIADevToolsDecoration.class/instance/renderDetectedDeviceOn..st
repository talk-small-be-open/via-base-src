as yet unclassified
renderDetectedDeviceOn: html
	html div: [
		html div: self session viewportWidth asString.
		html div: (self session isTouchEnabled ifTrue: ['TOUCH'] ifFalse: ['NO TOUCH']) ]