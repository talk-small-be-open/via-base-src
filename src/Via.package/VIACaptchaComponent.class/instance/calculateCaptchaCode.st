as yet unclassified
calculateCaptchaCode
	| words |
	words := (self wd propertyAt: #captcha:wordList) ifNotBlank: [ :s | s lines ].

	words
		ifBlank: [ captchaCode := UUID new asString first: 5 ]
		ifNotBlank: [ captchaCode := words atRandom trimBoth ].

	figletCaptchaCodeText := nil