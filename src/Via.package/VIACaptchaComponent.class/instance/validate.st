actions
validate
	"First main method: Code is equal"
	isValid := enteredCode = captchaCode.
	isValid ifTrue: [self okGoAhead. ^ self].
	
	"Second method for JMeter or other occasions: Code is equal to a file name on the server tmp path"
	(enteredCode beginsWith: 'serverside-captcha-') ifTrue: [
		(self db propertyAt: #tmpPath) ifNotBlank: [ :tmp |
			(VIAPlatform current fileExists: (tmp, '/', enteredCode)) ifTrue: [
				self okGoAhead. ^ self].
	]].

	self retry