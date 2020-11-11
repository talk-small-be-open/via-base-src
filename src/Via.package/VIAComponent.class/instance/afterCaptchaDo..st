enumerating
afterCaptchaDo: aBlock
	^self requestCaptcha ifTrue: aBlock