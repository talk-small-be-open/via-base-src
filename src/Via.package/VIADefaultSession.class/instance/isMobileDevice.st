testing
isMobileDevice
	^ self isTouchEnabled and: [ self isViewportSmall ]
