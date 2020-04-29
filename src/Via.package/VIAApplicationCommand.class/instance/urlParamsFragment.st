as yet unclassified
urlParamsFragment
	^self hasParams
		ifTrue: ['cp=', self paramsString.]
		ifFalse: ['']