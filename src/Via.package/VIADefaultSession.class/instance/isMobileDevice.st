testing
isMobileDevice
	^ self isTouchEnabled and: [ self isViewportSmall or: [ self isViewportMedium ] ]
