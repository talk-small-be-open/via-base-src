correction
ifCorrectionAnd: aBoolean then: aBlock
	^(self isShowCorrection and: [aBoolean]) ifTrue: aBlock