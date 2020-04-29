as yet unclassified
validate
	| beInvalid recaptchaResponse remoteIp |

	beInvalid := [:text | self errorMessage: text t. ^false].

	(email includesSubstring: '@') ifFalse: [beInvalid value: 'register:error:emailFormat'].
	(self wd findUserByEmail: email) ifNotNil: [beInvalid value: 'register:error:emailAlreadyUsed'].

	firstName ifBlank: [beInvalid value: 'register:error:firstName'].
	password ifBlank: [beInvalid value: 'register:error:passwordFormat'].
	password size < 6 ifTrue: [beInvalid value: 'register:error:passwordFormat'].
	password = passwordConfirmation ifFalse: [beInvalid value: 'register:error:passwordConfirmation'].

	recaptchaResponse := self requestContext request at: 'g-recaptcha-response' ifAbsent: nil.
	remoteIp := self requestContext request remoteAddress.
	self ifProduction: [
		(VIAHelper verifyReCaptchaResponse: recaptchaResponse ip: remoteIp) ifFalse: [
			beInvalid value: 'register:error:captcha' ]].

	termsAccepted = true ifFalse: [beInvalid value: 'register:error:termsNotAccepted'].


	^true