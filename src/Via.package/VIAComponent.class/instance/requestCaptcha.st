as yet unclassified
requestCaptcha
	| answer |
	answer := self app lightbox: 'dialog:captcha:title' component: VIACaptchaComponent new.

	^answer = true