testing
ifViewportSmall: aBlock else: anElseBlock
	^ self session isViewportSmall ifTrue: aBlock ifFalse: anElseBlock