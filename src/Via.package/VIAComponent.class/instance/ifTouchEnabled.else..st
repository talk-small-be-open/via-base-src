testing
ifTouchEnabled: aBlock else: anElseBlock
	^ self session isTouchEnabled ifTrue: aBlock ifFalse: anElseBlock