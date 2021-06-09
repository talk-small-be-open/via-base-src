correction
ifCorrectionAnd: aBoolean then: aBlock else: anElseBlock
	^self isShowCorrection ifTrue: [
		(aBoolean = true) ifTrue: aBlock ifFalse: anElseBlock]