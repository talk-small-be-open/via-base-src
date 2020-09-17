correction
ifCorrectionAnd: aBoolean then: aBlock else: anElseBlock
	^self isShowCorrection ifTrue: [
		aBoolean ifTrue: aBlock ifFalse: anElseBlock]